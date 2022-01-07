
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __match_glob (char const*,char const*,int,int) ;

bool strglobmatch_nocase(const char *str, const char *pat)
{
 return __match_glob(str, pat, 0, 1);
}
