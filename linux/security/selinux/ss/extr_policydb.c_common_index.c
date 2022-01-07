
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nprim; } ;
struct policydb {void*** sym_val_to_name; TYPE_1__ p_commons; } ;
struct common_datum {int value; } ;


 int EINVAL ;
 size_t SYM_COMMONS ;

__attribute__((used)) static int common_index(void *key, void *datum, void *datap)
{
 struct policydb *p;
 struct common_datum *comdatum;

 comdatum = datum;
 p = datap;
 if (!comdatum->value || comdatum->value > p->p_commons.nprim)
  return -EINVAL;

 p->sym_val_to_name[SYM_COMMONS][comdatum->value - 1] = key;

 return 0;
}
