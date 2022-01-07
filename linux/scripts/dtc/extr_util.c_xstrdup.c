
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 char* xmalloc (int) ;

char *xstrdup(const char *s)
{
 int len = strlen(s) + 1;
 char *d = xmalloc(len);

 memcpy(d, s, len);

 return d;
}
