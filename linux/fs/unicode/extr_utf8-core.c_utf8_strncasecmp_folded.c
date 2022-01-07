
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utf8data {int dummy; } ;
struct utf8cursor {int dummy; } ;
struct unicode_map {int version; } ;
struct qstr {int* name; int len; } ;


 int EINVAL ;
 int utf8byte (struct utf8cursor*) ;
 scalar_t__ utf8ncursor (struct utf8cursor*,struct utf8data const*,int*,int ) ;
 struct utf8data* utf8nfdicf (int ) ;

int utf8_strncasecmp_folded(const struct unicode_map *um,
       const struct qstr *cf,
       const struct qstr *s1)
{
 const struct utf8data *data = utf8nfdicf(um->version);
 struct utf8cursor cur1;
 int c1, c2;
 int i = 0;

 if (utf8ncursor(&cur1, data, s1->name, s1->len) < 0)
  return -EINVAL;

 do {
  c1 = utf8byte(&cur1);
  c2 = cf->name[i++];
  if (c1 < 0)
   return -EINVAL;
  if (c1 != c2)
   return 1;
 } while (c1);

 return 0;
}
