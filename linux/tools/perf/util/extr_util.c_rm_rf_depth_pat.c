
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {int d_name; } ;
typedef int namebuf ;
typedef int DIR ;


 int PATH_MAX ;
 int S_IFDIR ;
 scalar_t__ S_ISDIR (int) ;
 int closedir (int *) ;
 int lstat (char const*,struct stat*) ;
 int match_pat (int ,char const**) ;
 int * opendir (char const*) ;
 int pr_debug (char*,char*) ;
 struct dirent* readdir (int *) ;
 int rmdir (char const*) ;
 int scnprintf (char*,int,char*,char const*,int ) ;
 int strcmp (int ,char*) ;
 int unlink (char const*) ;

__attribute__((used)) static int rm_rf_depth_pat(const char *path, int depth, const char **pat)
{
 DIR *dir;
 int ret;
 struct dirent *d;
 char namebuf[PATH_MAX];
 struct stat statbuf;


 ret = lstat(path, &statbuf);
 if (ret)
  return 0;


 if (!(statbuf.st_mode & S_IFDIR))
  return unlink(path);


 dir = opendir(path);
 if (dir == ((void*)0))
  return -1;

 while ((d = readdir(dir)) != ((void*)0) && !ret) {

  if (!strcmp(d->d_name, ".") || !strcmp(d->d_name, ".."))
   continue;

  if (!match_pat(d->d_name, pat)) {
   ret = -2;
   break;
  }

  scnprintf(namebuf, sizeof(namebuf), "%s/%s",
     path, d->d_name);


  ret = lstat(namebuf, &statbuf);
  if (ret < 0) {
   pr_debug("stat failed: %s\n", namebuf);
   break;
  }

  if (S_ISDIR(statbuf.st_mode))
   ret = depth ? rm_rf_depth_pat(namebuf, depth - 1, pat) : 0;
  else
   ret = unlink(namebuf);
 }
 closedir(dir);

 if (ret < 0)
  return ret;

 return rmdir(path);
}
