
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* binary__fprintf_t ) (int ,int,void*,int *) ;
typedef int FILE ;


 int BINARY_PRINT_ADDR ;
 int BINARY_PRINT_CHAR_DATA ;
 int BINARY_PRINT_CHAR_PAD ;
 int BINARY_PRINT_DATA_BEGIN ;
 int BINARY_PRINT_DATA_END ;
 int BINARY_PRINT_LINE_BEGIN ;
 int BINARY_PRINT_LINE_END ;
 int BINARY_PRINT_NUM_DATA ;
 int BINARY_PRINT_NUM_PAD ;
 int BINARY_PRINT_SEP ;
 size_t roundup_pow_of_two (size_t) ;

int binary__fprintf(unsigned char *data, size_t len,
      size_t bytes_per_line, binary__fprintf_t printer,
      void *extra, FILE *fp)
{
 size_t i, j, mask;
 int printed = 0;

 if (!printer)
  return 0;

 bytes_per_line = roundup_pow_of_two(bytes_per_line);
 mask = bytes_per_line - 1;

 printed += printer(BINARY_PRINT_DATA_BEGIN, 0, extra, fp);
 for (i = 0; i < len; i++) {
  if ((i & mask) == 0) {
   printed += printer(BINARY_PRINT_LINE_BEGIN, -1, extra, fp);
   printed += printer(BINARY_PRINT_ADDR, i, extra, fp);
  }

  printed += printer(BINARY_PRINT_NUM_DATA, data[i], extra, fp);

  if (((i & mask) == mask) || i == len - 1) {
   for (j = 0; j < mask-(i & mask); j++)
    printed += printer(BINARY_PRINT_NUM_PAD, -1, extra, fp);

   printer(BINARY_PRINT_SEP, i, extra, fp);
   for (j = i & ~mask; j <= i; j++)
    printed += printer(BINARY_PRINT_CHAR_DATA, data[j], extra, fp);
   for (j = 0; j < mask-(i & mask); j++)
    printed += printer(BINARY_PRINT_CHAR_PAD, i, extra, fp);
   printed += printer(BINARY_PRINT_LINE_END, -1, extra, fp);
  }
 }
 printed += printer(BINARY_PRINT_DATA_END, -1, extra, fp);
 return printed;
}
