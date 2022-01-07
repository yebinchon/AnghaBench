
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int FILE ;


 size_t EINVAL ;
 size_t errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,size_t*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

ssize_t get_base_addr() {
 size_t start;
 char buf[256];
 FILE *f;

 f = fopen("/proc/self/maps", "r");
 if (!f)
  return -errno;

 while (fscanf(f, "%zx-%*x %s %*s\n", &start, buf) == 2) {
  if (strcmp(buf, "r-xp") == 0) {
   fclose(f);
   return start;
  }
 }

 fclose(f);
 return -EINVAL;
}
