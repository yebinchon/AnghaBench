
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_proto {int dummy; } ;
struct cls_fl_head {int dummy; } ;


 void* __fl_get (struct cls_fl_head*,int ) ;
 struct cls_fl_head* fl_head_dereference (struct tcf_proto*) ;

__attribute__((used)) static void *fl_get(struct tcf_proto *tp, u32 handle)
{
 struct cls_fl_head *head = fl_head_dereference(tp);

 return __fl_get(head, handle);
}
