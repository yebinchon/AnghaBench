
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regex {int pattern; } ;


 int * strnstr (char*,int ,int) ;
 int * strstr (char*,int ) ;

__attribute__((used)) static int regex_match_middle(char *str, struct regex *r, int len)
{
 if (!len)
  return strstr(str, r->pattern) != ((void*)0);

 return strnstr(str, r->pattern, len) != ((void*)0);
}
