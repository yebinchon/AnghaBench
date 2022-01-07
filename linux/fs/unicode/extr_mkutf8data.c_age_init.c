
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gen; } ;
typedef int FILE ;


 int LINESIZE ;
 int MAXGEN ;
 unsigned int UNICODE_AGE (unsigned int,unsigned int,unsigned int) ;
 char* age_name ;
 int age_valid (unsigned int,unsigned int,unsigned int) ;
 unsigned int* ages ;
 int ages_count ;
 unsigned int* calloc (int,int) ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ fgets (int ,int ,int *) ;
 int file_fail (char*) ;
 int * fopen (char*,char*) ;
 int line ;
 int line_fail (char*,int ) ;
 int open_fail (char*,int ) ;
 int printf (char*,...) ;
 int rewind (int *) ;
 int sscanf (int ,char*,unsigned int*,unsigned int*,...) ;
 TYPE_1__* unicode_data ;
 unsigned int unicode_maxage ;
 int utf32valid (unsigned int) ;
 int verbose ;

__attribute__((used)) static void age_init(void)
{
 FILE *file;
 unsigned int first;
 unsigned int last;
 unsigned int unichar;
 unsigned int major;
 unsigned int minor;
 unsigned int revision;
 int gen;
 int count;
 int ret;

 if (verbose > 0)
  printf("Parsing %s\n", age_name);

 file = fopen(age_name, "r");
 if (!file)
  open_fail(age_name, errno);
 count = 0;

 gen = 0;
 while (fgets(line, LINESIZE, file)) {
  ret = sscanf(line, "# Age=V%d_%d_%d",
    &major, &minor, &revision);
  if (ret == 3) {
   ages_count++;
   if (verbose > 1)
    printf(" Age V%d_%d_%d\n",
     major, minor, revision);
   if (!age_valid(major, minor, revision))
    line_fail(age_name, line);
   continue;
  }
  ret = sscanf(line, "# Age=V%d_%d", &major, &minor);
  if (ret == 2) {
   ages_count++;
   if (verbose > 1)
    printf(" Age V%d_%d\n", major, minor);
   if (!age_valid(major, minor, 0))
    line_fail(age_name, line);
   continue;
  }
 }


 if (verbose > 1)
  printf("%d age entries\n", ages_count);
 if (ages_count == 0 || ages_count > MAXGEN)
  file_fail(age_name);


 ages_count++;
 ages = calloc(ages_count + 1, sizeof(*ages));

 ages[ages_count] = (unsigned int)-1;

 rewind(file);
 count = 0;
 gen = 0;
 while (fgets(line, LINESIZE, file)) {
  ret = sscanf(line, "# Age=V%d_%d_%d",
    &major, &minor, &revision);
  if (ret == 3) {
   ages[++gen] =
    UNICODE_AGE(major, minor, revision);
   if (verbose > 1)
    printf(" Age V%d_%d_%d = gen %d\n",
     major, minor, revision, gen);
   if (!age_valid(major, minor, revision))
    line_fail(age_name, line);
   continue;
  }
  ret = sscanf(line, "# Age=V%d_%d", &major, &minor);
  if (ret == 2) {
   ages[++gen] = UNICODE_AGE(major, minor, 0);
   if (verbose > 1)
    printf(" Age V%d_%d = %d\n",
     major, minor, gen);
   if (!age_valid(major, minor, 0))
    line_fail(age_name, line);
   continue;
  }
  ret = sscanf(line, "%X..%X ; %d.%d #",
        &first, &last, &major, &minor);
  if (ret == 4) {
   for (unichar = first; unichar <= last; unichar++)
    unicode_data[unichar].gen = gen;
   count += 1 + last - first;
   if (verbose > 1)
    printf("  %X..%X gen %d\n", first, last, gen);
   if (!utf32valid(first) || !utf32valid(last))
    line_fail(age_name, line);
   continue;
  }
  ret = sscanf(line, "%X ; %d.%d #", &unichar, &major, &minor);
  if (ret == 3) {
   unicode_data[unichar].gen = gen;
   count++;
   if (verbose > 1)
    printf("  %X gen %d\n", unichar, gen);
   if (!utf32valid(unichar))
    line_fail(age_name, line);
   continue;
  }
 }
 unicode_maxage = ages[gen];
 fclose(file);


 if (verbose > 1)
  printf(" Removing surrogate block D800..DFFF\n");
 for (unichar = 0xd800; unichar <= 0xdfff; unichar++)
  unicode_data[unichar].gen = -1;

 if (verbose > 0)
         printf("Found %d entries\n", count);
 if (count == 0)
  file_fail(age_name);
}
