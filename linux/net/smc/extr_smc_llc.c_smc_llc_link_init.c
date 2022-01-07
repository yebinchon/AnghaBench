
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smc_link_group {scalar_t__ id; } ;
struct smc_link {int llc_testlink_wrk; int llc_testlink_resp; int llc_delete_rkey_mutex; int llc_delete_rkey; int llc_confirm_rkey; int llc_add_resp; int llc_add; int llc_confirm_resp; int llc_confirm; int llc_wq; int link_id; } ;


 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ,int ,int ) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 struct smc_link_group* smc_get_lgr (struct smc_link*) ;
 int smc_llc_testlink_work ;

int smc_llc_link_init(struct smc_link *link)
{
 struct smc_link_group *lgr = smc_get_lgr(link);
 link->llc_wq = alloc_ordered_workqueue("llc_wq-%x:%x)", WQ_MEM_RECLAIM,
            *((u32 *)lgr->id),
            link->link_id);
 if (!link->llc_wq)
  return -ENOMEM;
 init_completion(&link->llc_confirm);
 init_completion(&link->llc_confirm_resp);
 init_completion(&link->llc_add);
 init_completion(&link->llc_add_resp);
 init_completion(&link->llc_confirm_rkey);
 init_completion(&link->llc_delete_rkey);
 mutex_init(&link->llc_delete_rkey_mutex);
 init_completion(&link->llc_testlink_resp);
 INIT_DELAYED_WORK(&link->llc_testlink_wrk, smc_llc_testlink_work);
 return 0;
}
