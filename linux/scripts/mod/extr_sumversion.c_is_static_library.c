
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static int is_static_library(const char *objfile)
{
 int len = strlen(objfile);
 if (objfile[len - 2] == '.' && objfile[len - 1] == 'a')
  return 1;
 else
  return 0;
}
