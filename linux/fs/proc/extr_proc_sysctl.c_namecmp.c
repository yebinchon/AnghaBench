
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,int) ;

__attribute__((used)) static int namecmp(const char *name1, int len1, const char *name2, int len2)
{
 int minlen;
 int cmp;

 minlen = len1;
 if (minlen > len2)
  minlen = len2;

 cmp = memcmp(name1, name2, minlen);
 if (cmp == 0)
  cmp = len1 - len2;
 return cmp;
}
