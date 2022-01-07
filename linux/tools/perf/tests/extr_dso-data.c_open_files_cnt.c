
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int DIR ;


 int PATH_MAX ;
 int TEST_ASSERT_VAL (char*,int *) ;
 int closedir (int *) ;
 int * opendir (char*) ;
 int pr_debug (char*,char*) ;
 int procfs__mountpoint () ;
 struct dirent* readdir (int *) ;
 int scnprintf (char*,int,char*,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static long open_files_cnt(void)
{
 char path[PATH_MAX];
 struct dirent *dent;
 DIR *dir;
 long nr = 0;

 scnprintf(path, PATH_MAX, "%s/self/fd", procfs__mountpoint());
 pr_debug("fd path: %s\n", path);

 dir = opendir(path);
 TEST_ASSERT_VAL("failed to open fd directory", dir);

 while ((dent = readdir(dir)) != ((void*)0)) {
  if (!strcmp(dent->d_name, ".") ||
      !strcmp(dent->d_name, ".."))
   continue;

  nr++;
 }

 closedir(dir);
 return nr - 1;
}
