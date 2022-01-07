
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int lock; } ;
struct flow_cls_offload {scalar_t__ cookie; } ;
struct cls_fl_filter {int hw_list; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fl_hw_del(struct tcf_proto *tp, void *type_data)
{
 struct flow_cls_offload *cls_flower = type_data;
 struct cls_fl_filter *f =
  (struct cls_fl_filter *) cls_flower->cookie;

 spin_lock(&tp->lock);
 if (!list_empty(&f->hw_list))
  list_del_init(&f->hw_list);
 spin_unlock(&tp->lock);
}
