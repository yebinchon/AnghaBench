
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdname {char* name; int len; } ;


 int strcmp (char const*,char const*) ;

__attribute__((used)) static int levenshtein_compare(const void *p1, const void *p2)
{
 const struct cmdname *const *c1 = p1, *const *c2 = p2;
 const char *s1 = (*c1)->name, *s2 = (*c2)->name;
 int l1 = (*c1)->len;
 int l2 = (*c2)->len;
 return l1 != l2 ? l1 - l2 : strcmp(s1, s2);
}
