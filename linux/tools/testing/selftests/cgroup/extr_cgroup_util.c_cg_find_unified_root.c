
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int PAGE_SIZE ;
 scalar_t__ read_text (char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strncpy (char*,char*,size_t) ;
 char* strtok (char*,char const*) ;

int cg_find_unified_root(char *root, size_t len)
{
 char buf[10 * PAGE_SIZE];
 char *fs, *mount, *type;
 const char delim[] = "\n\t ";

 if (read_text("/proc/self/mounts", buf, sizeof(buf)) <= 0)
  return -1;





 for (fs = strtok(buf, delim); fs; fs = strtok(((void*)0), delim)) {
  mount = strtok(((void*)0), delim);
  type = strtok(((void*)0), delim);
  strtok(((void*)0), delim);
  strtok(((void*)0), delim);
  strtok(((void*)0), delim);

  if (strcmp(type, "cgroup2") == 0) {
   strncpy(root, mount, len);
   return 0;
  }
 }

 return -1;
}
