
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int DIR ;


 scalar_t__ check_postfix (char*,char*) ;
 scalar_t__ check_prefix (char*,char*) ;
 int closedir (int *) ;
 int errno ;
 int * opendir (char const*) ;
 int printf (char*,char*) ;
 struct dirent* readdir (int *) ;

__attribute__((used)) static int dump_channels(const char *dev_dir_name)
{
 DIR *dp;
 const struct dirent *ent;

 dp = opendir(dev_dir_name);
 if (!dp)
  return -errno;

 while (ent = readdir(dp), ent)
  if (check_prefix(ent->d_name, "in_") &&
     (check_postfix(ent->d_name, "_raw") ||
      check_postfix(ent->d_name, "_input")))
   printf("   %-10s\n", ent->d_name);

 return (closedir(dp) == -1) ? -errno : 0;
}
