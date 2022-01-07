
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nprim; } ;
struct policydb {struct class_datum** class_val_to_struct; void*** sym_val_to_name; TYPE_1__ p_classes; } ;
struct class_datum {int value; } ;


 int EINVAL ;
 size_t SYM_CLASSES ;

__attribute__((used)) static int class_index(void *key, void *datum, void *datap)
{
 struct policydb *p;
 struct class_datum *cladatum;

 cladatum = datum;
 p = datap;
 if (!cladatum->value || cladatum->value > p->p_classes.nprim)
  return -EINVAL;

 p->sym_val_to_name[SYM_CLASSES][cladatum->value - 1] = key;
 p->class_val_to_struct[cladatum->value - 1] = cladatum;
 return 0;
}
