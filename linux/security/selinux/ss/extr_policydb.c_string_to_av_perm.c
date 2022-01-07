
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
typedef int u16 ;
struct TYPE_6__ {int nprim; } ;
struct policydb {struct class_datum** class_val_to_struct; TYPE_3__ p_classes; } ;
struct perm_datum {int value; } ;
struct TYPE_4__ {int table; } ;
struct common_datum {TYPE_1__ permissions; } ;
struct TYPE_5__ {int table; } ;
struct class_datum {TYPE_2__ permissions; struct common_datum* comdatum; } ;


 struct perm_datum* hashtab_search (int ,char const*) ;

u32 string_to_av_perm(struct policydb *p, u16 tclass, const char *name)
{
 struct class_datum *cladatum;
 struct perm_datum *perdatum = ((void*)0);
 struct common_datum *comdatum;

 if (!tclass || tclass > p->p_classes.nprim)
  return 0;

 cladatum = p->class_val_to_struct[tclass-1];
 comdatum = cladatum->comdatum;
 if (comdatum)
  perdatum = hashtab_search(comdatum->permissions.table,
       name);
 if (!perdatum)
  perdatum = hashtab_search(cladatum->permissions.table,
       name);
 if (!perdatum)
  return 0;

 return 1U << (perdatum->value-1);
}
