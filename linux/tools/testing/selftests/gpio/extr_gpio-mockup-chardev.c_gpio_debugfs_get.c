
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EXIT_FAILURE ;
 int IN ;
 int OUT ;
 int err (int ,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ get_debugfs (char**) ;
 int getline (char**,size_t*,int *) ;
 char* strchr (char*,char) ;
 int strncmp (char*,char*,int) ;
 char* strstr (char*,char const*) ;

__attribute__((used)) static int gpio_debugfs_get(const char *consumer, int *dir, int *value)
{
 char *debugfs;
 FILE *f;
 char *line = ((void*)0);
 size_t len = 0;
 char *cur;
 int found = 0;

 if (get_debugfs(&debugfs) != 0)
  err(EXIT_FAILURE, "debugfs is not mounted");

 f = fopen(debugfs, "r");
 if (!f)
  err(EXIT_FAILURE, "read from gpio debugfs failed");




 while (getline(&line, &len, f) != -1) {
  cur = strstr(line, consumer);
  if (cur == ((void*)0))
   continue;

  cur = strchr(line, ')');
  if (!cur)
   continue;

  cur += 2;
  if (!strncmp(cur, "out", 3)) {
   *dir = OUT;
   cur += 4;
  } else if (!strncmp(cur, "in", 2)) {
   *dir = IN;
   cur += 4;
  }

  if (!strncmp(cur, "hi", 2))
   *value = 1;
  else if (!strncmp(cur, "lo", 2))
   *value = 0;

  found = 1;
  break;
 }
 free(debugfs);
 fclose(f);
 free(line);

 if (!found)
  return -1;

 return 0;
}
