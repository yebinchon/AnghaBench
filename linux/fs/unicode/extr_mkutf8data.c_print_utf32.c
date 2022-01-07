
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,unsigned int) ;

__attribute__((used)) static void print_utf32(unsigned int *utf32str)
{
 int i;

 for (i = 0; utf32str[i]; i++)
  printf(" %X", utf32str[i]);
}
