
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_link_group {int list; } ;
struct TYPE_2__ {int lock; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 TYPE_1__ smc_lgr_list ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void smc_lgr_forget(struct smc_link_group *lgr)
{
 spin_lock_bh(&smc_lgr_list.lock);

 if (!list_empty(&lgr->list))
  list_del_init(&lgr->list);
 spin_unlock_bh(&smc_lgr_list.lock);
}
