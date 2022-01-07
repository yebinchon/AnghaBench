
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int F_OK ;
 int PATH_MAX ;
 scalar_t__ access (char*,int ) ;
 int free (char*) ;
 char* getenv (char*) ;
 int scnprintf (char*,int,char*,char*,char*) ;
 char* strdup (char*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static bool lookup_path(char *name)
{
 bool found = 0;
 char *path, *tmp = ((void*)0);
 char buf[PATH_MAX];
 char *env = getenv("PATH");

 if (!env)
  return 0;

 env = strdup(env);
 if (!env)
  return 0;

 path = strtok_r(env, ":", &tmp);
 while (path) {
  scnprintf(buf, sizeof(buf), "%s/%s", path, name);
  if (access(buf, F_OK) == 0) {
   found = 1;
   break;
  }
  path = strtok_r(((void*)0), ":", &tmp);
 }
 free(env);
 return found;
}
