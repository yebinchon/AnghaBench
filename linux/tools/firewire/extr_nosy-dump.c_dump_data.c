
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t byte_index (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_data(unsigned char *data, int length)
{
 int i, print_length;

 if (length > 128)
  print_length = 128;
 else
  print_length = length;

 for (i = 0; i < print_length; i++)
  printf("%s%02hhx",
         (i % 4 == 0 && i != 0) ? " " : "",
         data[byte_index(i)]);

 if (print_length < length)
  printf(" (%d more bytes)", length - print_length);
}
