
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
struct ihex_binrec {int len; int addr; int* data; } ;
typedef int ssize_t ;
typedef int data32 ;


 size_t ALIGN (int,int) ;
 int EINVAL ;
 int ENOMEM ;
 int file_record (struct ihex_binrec*) ;
 int fprintf (int ,char*,...) ;
 int hex (char*,char*) ;
 int htonl (int) ;
 int include_jump ;
 struct ihex_binrec* malloc (size_t) ;
 int memcpy (int*,int*,int) ;
 int memset (struct ihex_binrec*,int ,size_t) ;
 int stderr ;
 scalar_t__ wide_records ;

__attribute__((used)) static int process_ihex(uint8_t *data, ssize_t size)
{
 struct ihex_binrec *record;
 size_t record_size;
 uint32_t offset = 0;
 uint32_t data32;
 uint8_t type, crc = 0, crcbyte = 0;
 int i, j;
 int line = 1;
 int len;

 i = 0;
next_record:

 while (i < size) {
  if (data[i] == '\n') line++;
  if (data[i++] == ':') break;
 }


 if (i + 10 > size) {
  fprintf(stderr, "Can't find valid record at line %d\n", line);
  return -EINVAL;
 }

 len = hex(data + i, &crc); i += 2;
 if (wide_records) {
  len <<= 8;
  len += hex(data + i, &crc); i += 2;
 }
 record_size = ALIGN(sizeof(*record) + len, 4);
 record = malloc(record_size);
 if (!record) {
  fprintf(stderr, "out of memory for records\n");
  return -ENOMEM;
 }
 memset(record, 0, record_size);
 record->len = len;


 if (i + 8 + (record->len * 2) > size) {
  fprintf(stderr, "Not enough data to read complete record at line %d\n",
   line);
  return -EINVAL;
 }

 record->addr = hex(data + i, &crc) << 8; i += 2;
 record->addr |= hex(data + i, &crc); i += 2;
 type = hex(data + i, &crc); i += 2;

 for (j = 0; j < record->len; j++, i += 2)
  record->data[j] = hex(data + i, &crc);


 crcbyte = hex(data + i, &crc); i += 2;
 if (crc != 0) {
  fprintf(stderr, "CRC failure at line %d: got 0x%X, expected 0x%X\n",
   line, crcbyte, (unsigned char)(crcbyte-crc));
  return -EINVAL;
 }


 switch (type) {
 case 0:

  if (!record->len)
   break;

  record->addr += offset;
  file_record(record);
  goto next_record;

 case 1:
  if (record->addr || record->len) {
   fprintf(stderr, "Bad EOF record (type 01) format at line %d",
    line);
   return -EINVAL;
  }
  break;

 case 2:
 case 4:
  if (record->addr || record->len != 2) {
   fprintf(stderr, "Bad HEX86/HEX386 record (type %02X) at line %d\n",
    type, line);
   return -EINVAL;
  }



  offset = record->data[0] << 8 | record->data[1];
  offset <<= (type == 2 ? 4 : 16);
  goto next_record;

 case 3:
 case 5:
  if (record->addr || record->len != 4) {
   fprintf(stderr, "Bad Start Address record (type %02X) at line %d\n",
    type, line);
   return -EINVAL;
  }

  memcpy(&data32, &record->data[0], sizeof(data32));
  data32 = htonl(data32);
  memcpy(&record->data[0], &data32, sizeof(data32));



  if (include_jump)
   file_record(record);
  goto next_record;

 default:
  fprintf(stderr, "Unknown record (type %02X)\n", type);
  return -EINVAL;
 }

 return 0;
}
