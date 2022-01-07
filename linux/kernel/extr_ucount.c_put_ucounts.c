
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucounts {int node; scalar_t__ count; } ;


 int hlist_del_init (int *) ;
 int kfree (struct ucounts*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ucounts_lock ;

__attribute__((used)) static void put_ucounts(struct ucounts *ucounts)
{
 unsigned long flags;

 spin_lock_irqsave(&ucounts_lock, flags);
 ucounts->count -= 1;
 if (!ucounts->count)
  hlist_del_init(&ucounts->node);
 else
  ucounts = ((void*)0);
 spin_unlock_irqrestore(&ucounts_lock, flags);

 kfree(ucounts);
}
