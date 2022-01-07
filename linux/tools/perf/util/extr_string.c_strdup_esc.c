
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,int) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 int strlen (char*) ;

char *strdup_esc(const char *str)
{
 char *s, *d, *p, *ret = strdup(str);

 if (!ret)
  return ((void*)0);

 d = strchr(ret, '\\');
 if (!d)
  return ret;

 s = d + 1;
 do {
  if (*s == '\0') {
   *d = '\0';
   break;
  }
  p = strchr(s + 1, '\\');
  if (p) {
   memmove(d, s, p - s);
   d += p - s;
   s = p + 1;
  } else
   memmove(d, s, strlen(s) + 1);
 } while (p);

 return ret;
}
