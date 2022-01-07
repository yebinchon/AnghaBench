
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char const*,char const*,int) ;
 int strlen (char const*) ;

char *cg_name_indexed(const char *root, const char *name, int index)
{
 size_t len = strlen(root) + strlen(name) + 10;
 char *ret = malloc(len);

 snprintf(ret, len, "%s/%s_%d", root, name, index);

 return ret;
}
