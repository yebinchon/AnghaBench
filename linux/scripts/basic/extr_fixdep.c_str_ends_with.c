
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int str_ends_with(const char *s, int slen, const char *sub)
{
 int sublen = strlen(sub);

 if (sublen > slen)
  return 0;

 return !memcmp(s + slen - sublen, sub, sublen);
}
