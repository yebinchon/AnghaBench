
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strcspn (char*,char*) ;
 size_t strspn (char*,char*) ;

__attribute__((used)) static char *remove_dot(char *s)
{
 size_t n = strcspn(s, ".");

 if (n && s[n]) {
  size_t m = strspn(s + n + 1, "0123456789");
  if (m && (s[n + m] == '.' || s[n + m] == 0))
   s[n] = 0;
 }
 return s;
}
