
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_path {struct tracepoint_path* name; struct tracepoint_path* system; } ;


 int free (struct tracepoint_path*) ;
 char* strchr (char const*,char) ;
 struct tracepoint_path* strdup (char*) ;
 struct tracepoint_path* strndup (char const*,int) ;
 struct tracepoint_path* zalloc (int) ;
 int zfree (struct tracepoint_path**) ;

struct tracepoint_path *tracepoint_name_to_path(const char *name)
{
 struct tracepoint_path *path = zalloc(sizeof(*path));
 char *str = strchr(name, ':');

 if (path == ((void*)0) || str == ((void*)0)) {
  free(path);
  return ((void*)0);
 }

 path->system = strndup(name, str - name);
 path->name = strdup(str+1);

 if (path->system == ((void*)0) || path->name == ((void*)0)) {
  zfree(&path->system);
  zfree(&path->name);
  zfree(&path);
 }

 return path;
}
