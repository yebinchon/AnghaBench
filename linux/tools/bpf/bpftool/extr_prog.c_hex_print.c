
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static void hex_print(void *data, unsigned int size, FILE *f)
{
 size_t i, j;
 char c;

 for (i = 0; i < size; i += 16) {

  fprintf(f, "%07zx\t", i);


  for (j = i; j < i + 16 && j < size; j++)
   fprintf(f, "%02x%s", *(uint8_t *)(data + j),
    j % 2 ? " " : "");
  for (; j < i + 16; j++)
   fprintf(f, "  %s", j % 2 ? " " : "");


  fprintf(f, "| ");
  for (j = i; j < i + 16 && j < size; j++) {
   c = *(char *)(data + j);
   if (c < ' ' || c > '~')
    c = '.';
   fprintf(f, "%c%s", c, j == i + 7 ? " " : "");
  }

  fprintf(f, "\n");
 }
}
