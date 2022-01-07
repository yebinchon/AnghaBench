
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicode_data {scalar_t__ gen; scalar_t__ ccc; scalar_t__ utf8nfdi; scalar_t__ utf8nfdicf; } ;


 scalar_t__ strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static int nfdicf_equal(void *l, void *r)
{
 struct unicode_data *left = l;
 struct unicode_data *right = r;

 if (left->gen != right->gen)
  return 0;
 if (left->ccc != right->ccc)
  return 0;
 if (left->utf8nfdicf && right->utf8nfdicf &&
     strcmp(left->utf8nfdicf, right->utf8nfdicf) == 0)
  return 1;
 if (left->utf8nfdicf && right->utf8nfdicf)
  return 0;
 if (left->utf8nfdicf || right->utf8nfdicf)
  return 0;
 if (left->utf8nfdi && right->utf8nfdi &&
     strcmp(left->utf8nfdi, right->utf8nfdi) == 0)
  return 1;
 if (left->utf8nfdi || right->utf8nfdi)
  return 0;
 return 1;
}
