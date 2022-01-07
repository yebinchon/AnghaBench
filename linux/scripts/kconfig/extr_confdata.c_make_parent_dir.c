
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;


 int PATH_MAX ;
 int is_dir (char*) ;
 scalar_t__ mkdir (char*,int) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int make_parent_dir(const char *path)
{
 char tmp[PATH_MAX + 1];
 char *p;

 strncpy(tmp, path, sizeof(tmp));
 tmp[sizeof(tmp) - 1] = 0;


 p = strrchr(tmp, '/');
 if (!p)
  return 0;
 *(p + 1) = 0;


 p = tmp;
 while (*p == '/')
  p++;

 while ((p = strchr(p, '/'))) {
  *p = 0;


  if (!is_dir(tmp) && mkdir(tmp, 0755))
   return -1;

  *p = '/';
  while (*p == '/')
   p++;
 }

 return 0;
}
