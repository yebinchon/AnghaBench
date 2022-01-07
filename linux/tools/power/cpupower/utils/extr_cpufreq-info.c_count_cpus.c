
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LINE_LEN ;
 char* _ (char*) ;
 int errno ;
 int fclose (int *) ;
 int feof (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int printf (char*,char*,char*) ;
 int sscanf (char*,char*,unsigned int*) ;
 char* strerror (int ) ;
 int strlen (char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static unsigned int count_cpus(void)
{
 FILE *fp;
 char value[LINE_LEN];
 unsigned int ret = 0;
 unsigned int cpunr = 0;

 fp = fopen("/proc/stat", "r");
 if (!fp) {
  printf(_("Couldn't count the number of CPUs (%s: %s), assuming 1\n"), "/proc/stat", strerror(errno));
  return 1;
 }

 while (!feof(fp)) {
  if (!fgets(value, LINE_LEN, fp))
   continue;
  value[LINE_LEN - 1] = '\0';
  if (strlen(value) < (LINE_LEN - 2))
   continue;
  if (strstr(value, "cpu "))
   continue;
  if (sscanf(value, "cpu%d ", &cpunr) != 1)
   continue;
  if (cpunr > ret)
   ret = cpunr;
 }
 fclose(fp);


 return ret + 1;
}
