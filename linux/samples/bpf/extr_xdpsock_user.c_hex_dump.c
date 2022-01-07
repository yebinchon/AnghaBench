
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int DEBUG_HEXDUMP ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static void hex_dump(void *pkt, size_t length, u64 addr)
{
 const unsigned char *address = (unsigned char *)pkt;
 const unsigned char *line = address;
 size_t line_size = 32;
 unsigned char c;
 char buf[32];
 int i = 0;

 if (!DEBUG_HEXDUMP)
  return;

 sprintf(buf, "addr=%llu", addr);
 printf("length = %zu\n", length);
 printf("%s | ", buf);
 while (length-- > 0) {
  printf("%02X ", *address++);
  if (!(++i % line_size) || (length == 0 && i % line_size)) {
   if (length == 0) {
    while (i++ % line_size)
     printf("__ ");
   }
   printf(" | ");
   while (line < address) {
    c = *line++;
    printf("%c", (c < 33 || c == 255) ? 0x2E : c);
   }
   printf("\n");
   if (length > 0)
    printf("%s | ", buf);
  }
 }
 printf("\n");
}
