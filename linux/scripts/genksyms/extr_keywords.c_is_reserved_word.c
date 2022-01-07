
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resword {int token; int name; } ;


 int NR_KEYWORDS ;
 struct resword* keywords ;
 int memcmp (char const*,int ,unsigned int) ;
 int strlen (int ) ;

__attribute__((used)) static int is_reserved_word(register const char *str, register unsigned int len)
{
 int i;
 for (i = 0; i < NR_KEYWORDS; i++) {
  struct resword *r = keywords + i;
  int l = strlen(r->name);
  if (len == l && !memcmp(str, r->name, len))
   return r->token;
 }
 return -1;
}
