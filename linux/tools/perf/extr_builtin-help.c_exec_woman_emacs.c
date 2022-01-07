
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asprintf (char**,char*,char const*) ;
 int check_emacsclient_version () ;
 int exec_failed (char const*) ;
 int execlp (char const*,char*,char*,char*,int *) ;
 int free (char*) ;

__attribute__((used)) static void exec_woman_emacs(const char *path, const char *page)
{
 if (!check_emacsclient_version()) {

  char *man_page;

  if (!path)
   path = "emacsclient";
  if (asprintf(&man_page, "(woman \"%s\")", page) > 0) {
   execlp(path, "emacsclient", "-e", man_page, ((void*)0));
   free(man_page);
  }
  exec_failed(path);
 }
}
