
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char*,char*,int) ;

__attribute__((used)) static char *cleanup_path(char *path)
{

 if (!memcmp(path, "./", 2)) {
  path += 2;
  while (*path == '/')
   path++;
 }
 return path;
}
