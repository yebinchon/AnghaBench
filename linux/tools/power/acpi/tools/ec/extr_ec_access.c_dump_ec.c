
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int EC_SPACE_SIZE ;
 int EXIT_FAILURE ;
 int SEEK_SET ;
 int SYSFS_PATH ;
 int err (int ,char*,int ) ;
 int fprintf (int ,char*,int) ;
 int lseek (int,int ,int ) ;
 int printf (char*,...) ;
 int read (int,char*,int) ;
 int sleep (int ) ;
 int sleep_time ;
 int stderr ;

void dump_ec(int fd)
{
 char buf[EC_SPACE_SIZE];
 char buf2[EC_SPACE_SIZE];
 int byte_off, bytes_read;

 bytes_read = read(fd, buf, EC_SPACE_SIZE);

 if (bytes_read == -1)
  err(EXIT_FAILURE, "Could not read from %s\n", SYSFS_PATH);

 if (bytes_read != EC_SPACE_SIZE)
  fprintf(stderr, "Could only read %d bytes\n", bytes_read);

 printf("     00  01  02  03  04  05  06  07  08  09  0A  0B  0C  0D  0E  0F");
 for (byte_off = 0; byte_off < bytes_read; byte_off++) {
  if ((byte_off % 16) == 0)
   printf("\n%.2X: ", byte_off);
  printf(" %.2x ", (uint8_t)buf[byte_off]);
 }
 printf("\n");

 if (!sleep_time)
  return;

 printf("\n");
 lseek(fd, 0, SEEK_SET);
 sleep(sleep_time);

 bytes_read = read(fd, buf2, EC_SPACE_SIZE);

 if (bytes_read == -1)
  err(EXIT_FAILURE, "Could not read from %s\n", SYSFS_PATH);

 if (bytes_read != EC_SPACE_SIZE)
  fprintf(stderr, "Could only read %d bytes\n", bytes_read);

 printf("     00  01  02  03  04  05  06  07  08  09  0A  0B  0C  0D  0E  0F");
 for (byte_off = 0; byte_off < bytes_read; byte_off++) {
  if ((byte_off % 16) == 0)
   printf("\n%.2X: ", byte_off);

  if (buf[byte_off] == buf2[byte_off])
   printf(" %.2x ", (uint8_t)buf2[byte_off]);
  else
   printf("*%.2x ", (uint8_t)buf2[byte_off]);
 }
 printf("\n");
}
