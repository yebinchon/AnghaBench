
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {int dummy; } ;


 int BUG_ON (int) ;
 int dax_is_locked (void*) ;
 int dax_wake_entry (struct xa_state*,void*,int) ;
 int xas_lock_irq (struct xa_state*) ;
 int xas_reset (struct xa_state*) ;
 void* xas_store (struct xa_state*,void*) ;
 int xas_unlock_irq (struct xa_state*) ;

__attribute__((used)) static void dax_unlock_entry(struct xa_state *xas, void *entry)
{
 void *old;

 BUG_ON(dax_is_locked(entry));
 xas_reset(xas);
 xas_lock_irq(xas);
 old = xas_store(xas, entry);
 xas_unlock_irq(xas);
 BUG_ON(!dax_is_locked(old));
 dax_wake_entry(xas, entry, 0);
}
