
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct cls_fl_head {int dummy; } ;


 struct cls_fl_head* rcu_dereference_raw (int ) ;

__attribute__((used)) static struct cls_fl_head *fl_head_dereference(struct tcf_proto *tp)
{





 return rcu_dereference_raw(tp->root);
}
