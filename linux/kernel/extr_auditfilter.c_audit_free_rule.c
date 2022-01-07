
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_krule {int field_count; struct audit_entry* filterkey; struct audit_entry* fields; scalar_t__ watch; } ;
struct audit_entry {struct audit_krule rule; } ;


 int audit_free_lsm_field (struct audit_entry*) ;
 int audit_put_watch (scalar_t__) ;
 int kfree (struct audit_entry*) ;

__attribute__((used)) static inline void audit_free_rule(struct audit_entry *e)
{
 int i;
 struct audit_krule *erule = &e->rule;


 if (erule->watch)
  audit_put_watch(erule->watch);
 if (erule->fields)
  for (i = 0; i < erule->field_count; i++)
   audit_free_lsm_field(&erule->fields[i]);
 kfree(erule->fields);
 kfree(erule->filterkey);
 kfree(e);
}
