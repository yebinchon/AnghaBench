
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int ccc; } ;
typedef int FILE ;


 int LINESIZE ;
 char* ccc_name ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ fgets (int ,int ,int *) ;
 int file_fail (char*) ;
 int * fopen (char*,char*) ;
 int line ;
 int line_fail (char*,int ) ;
 int open_fail (char*,int ) ;
 int printf (char*,...) ;
 int sscanf (int ,char*,unsigned int*,unsigned int*,...) ;
 TYPE_1__* unicode_data ;
 int utf32valid (unsigned int) ;
 int verbose ;

__attribute__((used)) static void ccc_init(void)
{
 FILE *file;
 unsigned int first;
 unsigned int last;
 unsigned int unichar;
 unsigned int value;
 int count;
 int ret;

 if (verbose > 0)
  printf("Parsing %s\n", ccc_name);

 file = fopen(ccc_name, "r");
 if (!file)
  open_fail(ccc_name, errno);

 count = 0;
 while (fgets(line, LINESIZE, file)) {
  ret = sscanf(line, "%X..%X ; %d #", &first, &last, &value);
  if (ret == 3) {
   for (unichar = first; unichar <= last; unichar++) {
    unicode_data[unichar].ccc = value;
                                count++;
   }
   if (verbose > 1)
    printf(" %X..%X ccc %d\n", first, last, value);
   if (!utf32valid(first) || !utf32valid(last))
    line_fail(ccc_name, line);
   continue;
  }
  ret = sscanf(line, "%X ; %d #", &unichar, &value);
  if (ret == 2) {
   unicode_data[unichar].ccc = value;
                        count++;
   if (verbose > 1)
    printf(" %X ccc %d\n", unichar, value);
   if (!utf32valid(unichar))
    line_fail(ccc_name, line);
   continue;
  }
 }
 fclose(file);

 if (verbose > 0)
  printf("Found %d entries\n", count);
 if (count == 0)
  file_fail(ccc_name);
}
