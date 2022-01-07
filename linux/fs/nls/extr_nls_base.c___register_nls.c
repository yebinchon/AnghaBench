
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {struct nls_table* next; struct module* owner; } ;
struct module {int dummy; } ;


 int EBUSY ;
 int nls_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct nls_table* tables ;

int __register_nls(struct nls_table *nls, struct module *owner)
{
 struct nls_table ** tmp = &tables;

 if (nls->next)
  return -EBUSY;

 nls->owner = owner;
 spin_lock(&nls_lock);
 while (*tmp) {
  if (nls == *tmp) {
   spin_unlock(&nls_lock);
   return -EBUSY;
  }
  tmp = &(*tmp)->next;
 }
 nls->next = tables;
 tables = nls;
 spin_unlock(&nls_lock);
 return 0;
}
