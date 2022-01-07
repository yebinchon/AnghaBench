
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;
struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int DIR ;


 int S_ISDIR (int ) ;
 int closedir (int *) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int stat (char const*,struct stat*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
load_plugins_dir(struct tep_handle *tep, const char *suffix,
   const char *path,
   void (*load_plugin)(struct tep_handle *tep,
         const char *path,
         const char *name,
         void *data),
   void *data)
{
 struct dirent *dent;
 struct stat st;
 DIR *dir;
 int ret;

 ret = stat(path, &st);
 if (ret < 0)
  return;

 if (!S_ISDIR(st.st_mode))
  return;

 dir = opendir(path);
 if (!dir)
  return;

 while ((dent = readdir(dir))) {
  const char *name = dent->d_name;

  if (strcmp(name, ".") == 0 ||
      strcmp(name, "..") == 0)
   continue;


  if (strcmp(name + (strlen(name) - strlen(suffix)), suffix) != 0)
   continue;

  load_plugin(tep, path, name, data);
 }

 closedir(dir);
}
