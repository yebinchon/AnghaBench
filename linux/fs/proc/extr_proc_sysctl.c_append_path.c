
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static char *append_path(const char *path, char *pos, const char *name)
{
 int namelen;
 namelen = strlen(name);
 if (((pos - path) + namelen + 2) >= PATH_MAX)
  return ((void*)0);
 memcpy(pos, name, namelen);
 pos[namelen] = '/';
 pos[namelen + 1] = '\0';
 pos += namelen + 1;
 return pos;
}
