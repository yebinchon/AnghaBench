
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fl_flow_mask {int ht_node; int refcnt; } ;
struct cls_fl_head {int ht; } ;
struct cls_fl_filter {struct fl_flow_mask* mask; } ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct fl_flow_mask*) ;
 int PTR_ERR (struct fl_flow_mask*) ;
 struct fl_flow_mask* fl_create_new_mask (struct cls_fl_head*,struct fl_flow_mask*) ;
 int mask_ht_params ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int refcount_inc_not_zero (int *) ;
 struct fl_flow_mask* rhashtable_lookup_get_insert_fast (int *,int *,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static int fl_check_assign_mask(struct cls_fl_head *head,
    struct cls_fl_filter *fnew,
    struct cls_fl_filter *fold,
    struct fl_flow_mask *mask)
{
 struct fl_flow_mask *newmask;
 int ret = 0;

 rcu_read_lock();





 fnew->mask = rhashtable_lookup_get_insert_fast(&head->ht,
             &mask->ht_node,
             mask_ht_params);
 if (!fnew->mask) {
  rcu_read_unlock();

  if (fold) {
   ret = -EINVAL;
   goto errout_cleanup;
  }

  newmask = fl_create_new_mask(head, mask);
  if (IS_ERR(newmask)) {
   ret = PTR_ERR(newmask);
   goto errout_cleanup;
  }

  fnew->mask = newmask;
  return 0;
 } else if (IS_ERR(fnew->mask)) {
  ret = PTR_ERR(fnew->mask);
 } else if (fold && fold->mask != fnew->mask) {
  ret = -EINVAL;
 } else if (!refcount_inc_not_zero(&fnew->mask->refcnt)) {

  ret = -EAGAIN;
 }
 rcu_read_unlock();
 return ret;

errout_cleanup:
 rhashtable_remove_fast(&head->ht, &mask->ht_node,
          mask_ht_params);
 return ret;
}
