
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct cls_fl_head {int ht; int handle_idr; int hw_filters; int masks; int masks_lock; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_LIST_HEAD_RCU (int *) ;
 int idr_init (int *) ;
 struct cls_fl_head* kzalloc (int,int ) ;
 int mask_ht_params ;
 int rcu_assign_pointer (int ,struct cls_fl_head*) ;
 int rhashtable_init (int *,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int fl_init(struct tcf_proto *tp)
{
 struct cls_fl_head *head;

 head = kzalloc(sizeof(*head), GFP_KERNEL);
 if (!head)
  return -ENOBUFS;

 spin_lock_init(&head->masks_lock);
 INIT_LIST_HEAD_RCU(&head->masks);
 INIT_LIST_HEAD(&head->hw_filters);
 rcu_assign_pointer(tp->root, head);
 idr_init(&head->handle_idr);

 return rhashtable_init(&head->ht, &mask_ht_params);
}
