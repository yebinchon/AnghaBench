
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char const*,char const*) ;
 int strlen (char const*) ;

char *cg_name(const char *root, const char *name)
{
 size_t len = strlen(root) + strlen(name) + 2;
 char *ret = malloc(len);

 snprintf(ret, len, "%s/%s", root, name);

 return ret;
}
