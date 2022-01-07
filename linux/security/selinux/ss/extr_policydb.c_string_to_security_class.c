
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int table; } ;
struct policydb {TYPE_1__ p_classes; } ;
struct class_datum {int value; } ;


 struct class_datum* hashtab_search (int ,char const*) ;

u16 string_to_security_class(struct policydb *p, const char *name)
{
 struct class_datum *cladatum;

 cladatum = hashtab_search(p->p_classes.table, name);
 if (!cladatum)
  return 0;

 return cladatum->value;
}
