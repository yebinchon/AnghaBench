
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int snprintf (char*,int,char*,char*) ;
 int system (char*) ;

__attribute__((used)) static int test_format_dir_put(char *dir)
{
 char buf[PATH_MAX];
 snprintf(buf, PATH_MAX, "rm -f %s/*\n", dir);
 if (system(buf))
  return -1;

 snprintf(buf, PATH_MAX, "rmdir %s\n", dir);
 return system(buf);
}
