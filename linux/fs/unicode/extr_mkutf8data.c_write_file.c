
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; int maxage; char* type; } ;
typedef int FILE ;


 int* ages ;
 int ages_count ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int open_fail (char*,int ) ;
 int printf (char*,char*) ;
 TYPE_1__* trees ;
 int trees_count ;
 int unicode_maxage ;
 char* utf8_name ;
 int* utf8data ;
 int utf8data_size ;
 scalar_t__ verbose ;

__attribute__((used)) static void write_file(void)
{
 FILE *file;
 int i;
 int j;
 int t;
 int gen;

 if (verbose > 0)
  printf("Writing %s\n", utf8_name);
 file = fopen(utf8_name, "w");
 if (!file)
  open_fail(utf8_name, errno);

 fprintf(file, "/* This file is generated code, do not edit. */\n");
 fprintf(file, "#ifndef __INCLUDED_FROM_UTF8NORM_C__\n");
 fprintf(file, "#error Only nls_utf8-norm.c should include this file.\n");
 fprintf(file, "#endif\n");
 fprintf(file, "\n");
 fprintf(file, "static const unsigned int utf8vers = %#x;\n",
  unicode_maxage);
 fprintf(file, "\n");
 fprintf(file, "static const unsigned int utf8agetab[] = {\n");
 for (i = 0; i != ages_count; i++)
  fprintf(file, "\t%#x%s\n", ages[i],
   ages[i] == unicode_maxage ? "" : ",");
 fprintf(file, "};\n");
 fprintf(file, "\n");
 fprintf(file, "static const struct utf8data utf8nfdicfdata[] = {\n");
 t = 0;
 for (gen = 0; gen < ages_count; gen++) {
  fprintf(file, "\t{ %#x, %d }%s\n",
   ages[gen], trees[t].index,
   ages[gen] == unicode_maxage ? "" : ",");
  if (trees[t].maxage == ages[gen])
   t += 2;
 }
 fprintf(file, "};\n");
 fprintf(file, "\n");
 fprintf(file, "static const struct utf8data utf8nfdidata[] = {\n");
 t = 1;
 for (gen = 0; gen < ages_count; gen++) {
  fprintf(file, "\t{ %#x, %d }%s\n",
   ages[gen], trees[t].index,
   ages[gen] == unicode_maxage ? "" : ",");
  if (trees[t].maxage == ages[gen])
   t += 2;
 }
 fprintf(file, "};\n");
 fprintf(file, "\n");
 fprintf(file, "static const unsigned char utf8data[%zd] = {\n",
  utf8data_size);
 t = 0;
 for (i = 0; i != utf8data_size; i += 16) {
  if (i == trees[t].index) {
   fprintf(file, "\t/* %s_%x */\n",
    trees[t].type, trees[t].maxage);
   if (t < trees_count-1)
    t++;
  }
  fprintf(file, "\t");
  for (j = i; j != i + 16; j++)
   fprintf(file, "0x%.2x%s", utf8data[j],
    (j < utf8data_size -1 ? "," : ""));
  fprintf(file, "\n");
 }
 fprintf(file, "};\n");
 fclose(file);
}
