
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int sscanf (char*,char*,void**,void**,int*) ;
 int stderr ;
 int strlen (char const*) ;
 int strncmp (char*,char const*,int ) ;

__attribute__((used)) static int find_map(void **start, void **end, const char *name)
{
 FILE *maps;
 char line[128];
 int found = 0;

 maps = fopen("/proc/self/maps", "r");
 if (!maps) {
  fprintf(stderr, "cannot open maps\n");
  return -1;
 }

 while (!found && fgets(line, sizeof(line), maps)) {
  int m = -1;


  if (2 != sscanf(line, "%p-%p r-xp %*x %*x:%*x %*u %n",
    start, end, &m))
   continue;
  if (m < 0)
   continue;

  if (!strncmp(&line[m], name, strlen(name)))
   found = 1;
 }

 fclose(maps);
 return !found;
}
