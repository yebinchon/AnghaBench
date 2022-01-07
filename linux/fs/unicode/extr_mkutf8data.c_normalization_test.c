
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicode_data {int * utf8nfdi; } ;
typedef int FILE ;


 int LINESIZE ;
 char* buf0 ;
 char* buf1 ;
 char* buf2 ;
 char* buf3 ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int ,int *) ;
 int file_fail (char*) ;
 int * fopen (char*,char*) ;
 char* line ;
 int nfdi_tree ;
 scalar_t__ normalize_line (int ) ;
 int open_fail (char*,int ) ;
 int printf (char*,...) ;
 int sscanf (char*,char*,char*,char*) ;
 unsigned int strtoul (char*,char**,int) ;
 char* test_name ;
 struct unicode_data* unicode_data ;
 int utf8encode (char*,unsigned int) ;
 scalar_t__ verbose ;

__attribute__((used)) static void normalization_test(void)
{
 FILE *file;
 unsigned int unichar;
 struct unicode_data *data;
 char *s;
 char *t;
 int ret;
 int ignorables;
 int tests = 0;
 int failures = 0;

 if (verbose > 0)
  printf("Parsing %s\n", test_name);

 file = fopen(test_name, "r");
 if (!file)
  open_fail(test_name, errno);

 while (fgets(line, LINESIZE, file)) {
  ret = sscanf(line, "%[^;];%*[^;];%[^;];%*[^;];%*[^;];",
        buf0, buf1);
  if (ret != 2 || *line == '#')
   continue;
  s = buf0;
  t = buf2;
  while (*s) {
   unichar = strtoul(s, &s, 16);
   t += utf8encode(t, unichar);
  }
  *t = '\0';

  ignorables = 0;
  s = buf1;
  t = buf3;
  while (*s) {
   unichar = strtoul(s, &s, 16);
   data = &unicode_data[unichar];
   if (data->utf8nfdi && !*data->utf8nfdi)
    ignorables = 1;
   else
    t += utf8encode(t, unichar);
  }
  *t = '\0';

  tests++;
  if (normalize_line(nfdi_tree) < 0) {
   printf("Line %s -> %s", buf0, buf1);
   if (ignorables)
    printf(" (ignorables removed)");
   printf(" failure\n");
   failures++;
  }
 }
 fclose(file);
 if (verbose > 0)
  printf("Ran %d tests with %d failures\n", tests, failures);
 if (failures)
  file_fail(test_name);
}
