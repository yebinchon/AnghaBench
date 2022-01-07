
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type_datum {int value; scalar_t__ bounds; scalar_t__ primary; } ;
struct TYPE_2__ {int nprim; } ;
struct policydb {struct type_datum** type_val_to_struct; void*** sym_val_to_name; TYPE_1__ p_types; } ;


 int EINVAL ;
 size_t SYM_TYPES ;

__attribute__((used)) static int type_index(void *key, void *datum, void *datap)
{
 struct policydb *p;
 struct type_datum *typdatum;

 typdatum = datum;
 p = datap;

 if (typdatum->primary) {
  if (!typdatum->value
      || typdatum->value > p->p_types.nprim
      || typdatum->bounds > p->p_types.nprim)
   return -EINVAL;
  p->sym_val_to_name[SYM_TYPES][typdatum->value - 1] = key;
  p->type_val_to_struct[typdatum->value - 1] = typdatum;
 }

 return 0;
}
