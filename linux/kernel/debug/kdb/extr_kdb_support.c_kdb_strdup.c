
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 char* kmalloc (int,int ) ;
 char* strcpy (char*,char const*) ;
 int strlen (char const*) ;

char *kdb_strdup(const char *str, gfp_t type)
{
 int n = strlen(str)+1;
 char *s = kmalloc(n, type);
 if (!s)
  return ((void*)0);
 return strcpy(s, str);
}
