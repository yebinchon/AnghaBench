
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int delimiters ;
typedef int FILE ;


 int fprintf (int *,char*,char*,...) ;
 scalar_t__ snprintf (char*,int,char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void format_and_print_txt(FILE *outf, int level, char *header,
     char *value)
{
 char *spaces = "  ";
 static char delimiters[256];
 int i, j = 0;

 if (!level)
  return;

 if (level == 1) {
  strcpy(delimiters, " ");
 } else {
  for (i = 0; i < level - 1; ++i)
   j += snprintf(&delimiters[j], sizeof(delimiters) - j,
          "%s", spaces);
 }

 if (header && value) {
  fprintf(outf, "%s", delimiters);
  fprintf(outf, "%s:%s\n", header, value);
 } else if (header) {
  fprintf(outf, "%s", delimiters);
  fprintf(outf, "%s\n", header);
 }
}
