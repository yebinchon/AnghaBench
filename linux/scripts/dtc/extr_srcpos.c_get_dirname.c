
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 char* strrchr (char const*,char) ;
 char* xmalloc (int) ;

__attribute__((used)) static char *get_dirname(const char *path)
{
 const char *slash = strrchr(path, '/');

 if (slash) {
  int len = slash - path;
  char *dir = xmalloc(len + 1);

  memcpy(dir, path, len);
  dir[len] = '\0';
  return dir;
 }
 return ((void*)0);
}
