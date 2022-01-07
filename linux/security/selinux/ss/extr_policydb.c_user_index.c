
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_datum {int value; scalar_t__ bounds; } ;
struct TYPE_2__ {int nprim; } ;
struct policydb {struct user_datum** user_val_to_struct; void*** sym_val_to_name; TYPE_1__ p_users; } ;


 int EINVAL ;
 size_t SYM_USERS ;

__attribute__((used)) static int user_index(void *key, void *datum, void *datap)
{
 struct policydb *p;
 struct user_datum *usrdatum;

 usrdatum = datum;
 p = datap;
 if (!usrdatum->value
     || usrdatum->value > p->p_users.nprim
     || usrdatum->bounds > p->p_users.nprim)
  return -EINVAL;

 p->sym_val_to_name[SYM_USERS][usrdatum->value - 1] = key;
 p->user_val_to_struct[usrdatum->value - 1] = usrdatum;
 return 0;
}
