
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static char *nfs_path_component(const char *nfspath, const char *end)
{
 char *p;

 if (*nfspath == '[') {

  p = strchr(nfspath, ']');
  if (p != ((void*)0) && ++p < end && *p == ':')
   return p + 1;
 } else {

  p = strchr(nfspath, ':');
  if (p != ((void*)0) && p < end)
   return p + 1;
 }
 return ((void*)0);
}
