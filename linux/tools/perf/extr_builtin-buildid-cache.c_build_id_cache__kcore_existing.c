
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int to_subdir ;
typedef int to ;
struct dirent {scalar_t__ d_type; int d_name; } ;
typedef int from ;
typedef int DIR ;


 scalar_t__ DT_DIR ;
 int PATH_MAX ;
 int closedir (int *) ;
 int compare_proc_modules (char*,char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ same_kallsyms_reloc (char const*,char*) ;
 int scnprintf (char*,int,char*,char const*,...) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int build_id_cache__kcore_existing(const char *from_dir, char *to_dir,
       size_t to_dir_sz)
{
 char from[PATH_MAX];
 char to[PATH_MAX];
 char to_subdir[PATH_MAX];
 struct dirent *dent;
 int ret = -1;
 DIR *d;

 d = opendir(to_dir);
 if (!d)
  return -1;

 scnprintf(from, sizeof(from), "%s/modules", from_dir);

 while (1) {
  dent = readdir(d);
  if (!dent)
   break;
  if (dent->d_type != DT_DIR)
   continue;
  scnprintf(to, sizeof(to), "%s/%s/modules", to_dir,
     dent->d_name);
  scnprintf(to_subdir, sizeof(to_subdir), "%s/%s",
     to_dir, dent->d_name);
  if (!compare_proc_modules(from, to) &&
      same_kallsyms_reloc(from_dir, to_subdir)) {
   strlcpy(to_dir, to_subdir, to_dir_sz);
   ret = 0;
   break;
  }
 }

 closedir(d);

 return ret;
}
