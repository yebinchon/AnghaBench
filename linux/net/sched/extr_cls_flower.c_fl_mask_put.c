
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fl_flow_mask {int rwork; int list; int ht_node; int refcnt; } ;
struct cls_fl_head {int masks_lock; int ht; } ;


 int fl_mask_free_work ;
 int list_del_rcu (int *) ;
 int mask_ht_params ;
 int refcount_dec_and_test (int *) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcf_queue_work (int *,int ) ;

__attribute__((used)) static bool fl_mask_put(struct cls_fl_head *head, struct fl_flow_mask *mask)
{
 if (!refcount_dec_and_test(&mask->refcnt))
  return 0;

 rhashtable_remove_fast(&head->ht, &mask->ht_node, mask_ht_params);

 spin_lock(&head->masks_lock);
 list_del_rcu(&mask->list);
 spin_unlock(&head->masks_lock);

 tcf_queue_work(&mask->rwork, fl_mask_free_work);

 return 1;
}
