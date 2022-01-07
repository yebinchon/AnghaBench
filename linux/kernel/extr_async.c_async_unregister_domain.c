
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_domain {scalar_t__ registered; int pending; } ;


 int WARN_ON (int) ;
 int async_lock ;
 int list_empty (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void async_unregister_domain(struct async_domain *domain)
{
 spin_lock_irq(&async_lock);
 WARN_ON(!domain->registered || !list_empty(&domain->pending));
 domain->registered = 0;
 spin_unlock_irq(&async_lock);
}
