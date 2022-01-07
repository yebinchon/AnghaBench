
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asprintf (char**,char*,char const*) ;
 int exec_failed (char const*) ;
 int execlp (char const*,char const*,char*,char*,int *) ;
 int free (char*) ;
 char* getenv (char*) ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,char*) ;
 char* strdup (char const*) ;
 void* strrchr (char const*,char) ;

__attribute__((used)) static void exec_man_konqueror(const char *path, const char *page)
{
 const char *display = getenv("DISPLAY");

 if (display && *display) {
  char *man_page;
  const char *filename = "kfmclient";


  if (path) {
   const char *file = strrchr(path, '/');
   if (file && !strcmp(file + 1, "konqueror")) {
    char *new = strdup(path);
    char *dest = strrchr(new, '/');


    strcpy(dest + 1, "kfmclient");
    path = new;
   }
   if (file)
    filename = file;
  } else
   path = "kfmclient";
  if (asprintf(&man_page, "man:%s(1)", page) > 0) {
   execlp(path, filename, "newTab", man_page, ((void*)0));
   free(man_page);
  }
  exec_failed(path);
 }
}
