
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void dump_hex(unsigned long long *data, int from, int to)
{
 unsigned offset, print_offset = 1, col = 0;

 from /= 8;
 to = (to + 7) / 8;

 for (offset = from; offset < to; offset++) {
  if (print_offset) {
   printf("%04x: ", offset * 8);
   print_offset = 0;
  }
  printf("%016llx", data[offset]);
  col++;
  if ((col & 3) == 0) {
   printf("\n");
   print_offset = 1;
  } else {
   printf(" ");
  }
 }

 if (!print_offset)
  printf("\n");
}
