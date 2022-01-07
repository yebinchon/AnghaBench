
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpoa_client {int ingress_lock; int * in_cache; TYPE_1__* in_ops; } ;
struct TYPE_2__ {int (* remove_entry ) (int *,struct mpoa_client*) ;} ;


 int stub1 (int *,struct mpoa_client*) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void in_destroy_cache(struct mpoa_client *mpc)
{
 write_lock_irq(&mpc->ingress_lock);
 while (mpc->in_cache != ((void*)0))
  mpc->in_ops->remove_entry(mpc->in_cache, mpc);
 write_unlock_irq(&mpc->ingress_lock);
}
