
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char const* d_name; } ;
struct cmdnames {int dummy; } ;
typedef int DIR ;


 int add_cmdname (struct cmdnames*,char const*,int) ;
 int astrcat (char**,char const*) ;
 int astrcatf (char**,char*,char const*) ;
 int closedir (int *) ;
 int free (char*) ;
 scalar_t__ has_extension (char const*,char*) ;
 int is_executable (char*) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int strlen (char const*) ;
 int strstarts (char const*,char const*) ;

__attribute__((used)) static void list_commands_in_dir(struct cmdnames *cmds,
      const char *path,
      const char *prefix)
{
 int prefix_len;
 DIR *dir = opendir(path);
 struct dirent *de;
 char *buf = ((void*)0);

 if (!dir)
  return;
 if (!prefix)
  prefix = "perf-";
 prefix_len = strlen(prefix);

 astrcatf(&buf, "%s/", path);

 while ((de = readdir(dir)) != ((void*)0)) {
  int entlen;

  if (!strstarts(de->d_name, prefix))
   continue;

  astrcat(&buf, de->d_name);
  if (!is_executable(buf))
   continue;

  entlen = strlen(de->d_name) - prefix_len;
  if (has_extension(de->d_name, ".exe"))
   entlen -= 4;

  add_cmdname(cmds, de->d_name + prefix_len, entlen);
 }
 closedir(dir);
 free(buf);
}
