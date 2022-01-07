
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exec_man_cmd (char const*,char const*) ;
 int exec_man_konqueror (char const*,char const*) ;
 int exec_man_man (char const*,char const*) ;
 int exec_woman_emacs (char const*,char const*) ;
 char* get_man_viewer_info (char const*) ;
 int pr_warning (char*,char const*) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static void exec_viewer(const char *name, const char *page)
{
 const char *info = get_man_viewer_info(name);

 if (!strcasecmp(name, "man"))
  exec_man_man(info, page);
 else if (!strcasecmp(name, "woman"))
  exec_woman_emacs(info, page);
 else if (!strcasecmp(name, "konqueror"))
  exec_man_konqueror(info, page);
 else if (info)
  exec_man_cmd(info, page);
 else
  pr_warning("'%s': unknown man viewer.", name);
}
