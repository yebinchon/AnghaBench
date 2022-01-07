
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {int lock; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_fl_head {int handle_idr; } ;
struct cls_fl_filter {int deleted; int res; int flags; TYPE_1__* mask; int list; int handle; int ht_node; } ;
struct TYPE_2__ {int filter_ht_params; int ht; } ;


 int ENOENT ;
 int __fl_put (struct cls_fl_filter*) ;
 struct cls_fl_head* fl_head_dereference (struct tcf_proto*) ;
 int fl_hw_destroy_filter (struct tcf_proto*,struct cls_fl_filter*,int,struct netlink_ext_ack*) ;
 int fl_mask_put (struct cls_fl_head*,TYPE_1__*) ;
 int idr_remove (int *,int ) ;
 int list_del_rcu (int *) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tc_skip_hw (int ) ;
 int tcf_unbind_filter (struct tcf_proto*,int *) ;

__attribute__((used)) static int __fl_delete(struct tcf_proto *tp, struct cls_fl_filter *f,
         bool *last, bool rtnl_held,
         struct netlink_ext_ack *extack)
{
 struct cls_fl_head *head = fl_head_dereference(tp);

 *last = 0;

 spin_lock(&tp->lock);
 if (f->deleted) {
  spin_unlock(&tp->lock);
  return -ENOENT;
 }

 f->deleted = 1;
 rhashtable_remove_fast(&f->mask->ht, &f->ht_node,
          f->mask->filter_ht_params);
 idr_remove(&head->handle_idr, f->handle);
 list_del_rcu(&f->list);
 spin_unlock(&tp->lock);

 *last = fl_mask_put(head, f->mask);
 if (!tc_skip_hw(f->flags))
  fl_hw_destroy_filter(tp, f, rtnl_held, extack);
 tcf_unbind_filter(tp, &f->res);
 __fl_put(f);

 return 0;
}
