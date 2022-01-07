
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scnprintf (char*,size_t,char*,char const*,char*,char const*,char*,char const*) ;

int path__join3(char *bf, size_t size, const char *path1, const char *path2, const char *path3)
{
 return scnprintf(bf, size, "%s%s%s%s%s", path1, path1[0] ? "/" : "",
    path2, path2[0] ? "/" : "", path3);
}
