
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nprim; } ;
struct policydb {struct cond_bool_datum** bool_val_to_struct; void*** sym_val_to_name; TYPE_1__ p_bools; } ;
struct cond_bool_datum {int value; } ;


 int EINVAL ;
 size_t SYM_BOOLS ;

int cond_index_bool(void *key, void *datum, void *datap)
{
 struct policydb *p;
 struct cond_bool_datum *booldatum;

 booldatum = datum;
 p = datap;

 if (!booldatum->value || booldatum->value > p->p_bools.nprim)
  return -EINVAL;

 p->sym_val_to_name[SYM_BOOLS][booldatum->value - 1] = key;
 p->bool_val_to_struct[booldatum->value - 1] = booldatum;

 return 0;
}
