
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int scnprintf (char*,int,char*,char const*,char const*) ;
 int unlink (char*) ;

__attribute__((used)) static int kcore_copy__unlink(const char *dir, const char *name)
{
 char filename[PATH_MAX];

 scnprintf(filename, PATH_MAX, "%s/%s", dir, name);

 return unlink(filename);
}
