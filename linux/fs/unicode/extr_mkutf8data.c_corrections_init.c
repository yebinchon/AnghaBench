
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct unicode_data {int dummy; } ;
struct TYPE_4__ {unsigned int code; unsigned int correction; unsigned int* utf32nfdi; } ;
typedef int FILE ;


 int LINESIZE ;
 unsigned int UNICODE_AGE (unsigned int,unsigned int,unsigned int) ;
 int age_valid (unsigned int,unsigned int,unsigned int) ;
 int assert (int) ;
 char* buf0 ;
 char* buf1 ;
 TYPE_1__* calloc (int,int) ;
 TYPE_1__* corrections ;
 int corrections_count ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ fgets (int ,int ,int *) ;
 int file_fail (char*) ;
 int * fopen (char*,char*) ;
 int line ;
 int line_fail (char*,int ) ;
 unsigned int* malloc (int) ;
 int memcpy (unsigned int*,unsigned int*,int) ;
 char* norm_name ;
 int open_fail (char*,int ) ;
 int printf (char*,...) ;
 int rewind (int *) ;
 int sscanf (int ,char*,unsigned int*,char*,char*,unsigned int*,unsigned int*,unsigned int*) ;
 unsigned int strtoul (char*,char**,int) ;
 TYPE_1__* unicode_data ;
 int utf32valid (unsigned int) ;
 int verbose ;

__attribute__((used)) static void corrections_init(void)
{
 FILE *file;
 unsigned int unichar;
 unsigned int major;
 unsigned int minor;
 unsigned int revision;
 unsigned int age;
 unsigned int *um;
 unsigned int mapping[19];
 char *s;
 int i;
 int count;
 int ret;

 if (verbose > 0)
  printf("Parsing %s\n", norm_name);
 file = fopen(norm_name, "r");
 if (!file)
  open_fail(norm_name, errno);

 count = 0;
 while (fgets(line, LINESIZE, file)) {
  ret = sscanf(line, "%X;%[^;];%[^;];%d.%d.%d #",
    &unichar, buf0, buf1,
    &major, &minor, &revision);
  if (ret != 6)
   continue;
  if (!utf32valid(unichar) || !age_valid(major, minor, revision))
   line_fail(norm_name, line);
  count++;
 }
 corrections = calloc(count, sizeof(struct unicode_data));
 corrections_count = count;
 rewind(file);

 count = 0;
 while (fgets(line, LINESIZE, file)) {
  ret = sscanf(line, "%X;%[^;];%[^;];%d.%d.%d #",
    &unichar, buf0, buf1,
    &major, &minor, &revision);
  if (ret != 6)
   continue;
  if (!utf32valid(unichar) || !age_valid(major, minor, revision))
   line_fail(norm_name, line);
  corrections[count] = unicode_data[unichar];
  assert(corrections[count].code == unichar);
  age = UNICODE_AGE(major, minor, revision);
  corrections[count].correction = age;

  i = 0;
  s = buf0;
  while (*s) {
   mapping[i] = strtoul(s, &s, 16);
   if (!utf32valid(mapping[i]))
    line_fail(norm_name, line);
   i++;
  }
  mapping[i++] = 0;

  um = malloc(i * sizeof(unsigned int));
  memcpy(um, mapping, i * sizeof(unsigned int));
  corrections[count].utf32nfdi = um;

  if (verbose > 1)
   printf(" %X -> %s -> %s V%d_%d_%d\n",
    unichar, buf0, buf1, major, minor, revision);
  count++;
 }
 fclose(file);

 if (verbose > 0)
         printf("Found %d entries\n", count);
 if (count == 0)
  file_fail(norm_name);
}
