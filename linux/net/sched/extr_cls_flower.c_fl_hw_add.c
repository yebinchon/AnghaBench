
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int lock; } ;
struct flow_cls_offload {scalar_t__ cookie; } ;
struct cls_fl_head {int hw_filters; } ;
struct cls_fl_filter {int hw_list; } ;


 struct cls_fl_head* fl_head_dereference (struct tcf_proto*) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fl_hw_add(struct tcf_proto *tp, void *type_data)
{
 struct flow_cls_offload *cls_flower = type_data;
 struct cls_fl_filter *f =
  (struct cls_fl_filter *) cls_flower->cookie;
 struct cls_fl_head *head = fl_head_dereference(tp);

 spin_lock(&tp->lock);
 list_add(&f->hw_list, &head->hw_filters);
 spin_unlock(&tp->lock);
}
