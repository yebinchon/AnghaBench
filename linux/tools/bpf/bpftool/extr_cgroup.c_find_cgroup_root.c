
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mntent {int mnt_dir; int mnt_type; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 struct mntent* getmntent (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 char* strdup (int ) ;

__attribute__((used)) static char *find_cgroup_root(void)
{
 struct mntent *mnt;
 FILE *f;

 f = fopen("/proc/mounts", "r");
 if (f == ((void*)0))
  return ((void*)0);

 while ((mnt = getmntent(f))) {
  if (strcmp(mnt->mnt_type, "cgroup2") == 0) {
   fclose(f);
   return strdup(mnt->mnt_dir);
  }
 }

 fclose(f);
 return ((void*)0);
}
