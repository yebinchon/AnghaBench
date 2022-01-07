
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nprim; } ;
struct policydb {void*** sym_val_to_name; TYPE_1__ p_cats; } ;
struct cat_datum {int value; int isalias; } ;


 int EINVAL ;
 size_t SYM_CATS ;

__attribute__((used)) static int cat_index(void *key, void *datum, void *datap)
{
 struct policydb *p;
 struct cat_datum *catdatum;

 catdatum = datum;
 p = datap;

 if (!catdatum->isalias) {
  if (!catdatum->value || catdatum->value > p->p_cats.nprim)
   return -EINVAL;

  p->sym_val_to_name[SYM_CATS][catdatum->value - 1] = key;
 }

 return 0;
}
