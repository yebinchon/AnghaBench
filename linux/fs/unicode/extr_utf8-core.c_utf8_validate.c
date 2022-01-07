
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utf8data {int dummy; } ;
struct unicode_map {int version; } ;
struct qstr {int len; int name; } ;


 struct utf8data* utf8nfdi (int ) ;
 scalar_t__ utf8nlen (struct utf8data const*,int ,int ) ;

int utf8_validate(const struct unicode_map *um, const struct qstr *str)
{
 const struct utf8data *data = utf8nfdi(um->version);

 if (utf8nlen(data, str->name, str->len) < 0)
  return -1;
 return 0;
}
