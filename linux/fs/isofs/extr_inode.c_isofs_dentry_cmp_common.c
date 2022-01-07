
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; char* name; } ;


 scalar_t__ strncasecmp (char*,char const*,int) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static int isofs_dentry_cmp_common(
  unsigned int len, const char *str,
  const struct qstr *name, int ms, int ci)
{
 int alen, blen;


 alen = name->len;
 blen = len;
 if (ms) {
  while (alen && name->name[alen-1] == '.')
   alen--;
  while (blen && str[blen-1] == '.')
   blen--;
 }
 if (alen == blen) {
  if (ci) {
   if (strncasecmp(name->name, str, alen) == 0)
    return 0;
  } else {
   if (strncmp(name->name, str, alen) == 0)
    return 0;
  }
 }
 return 1;
}
