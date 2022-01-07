
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct cls_fl_filter {int dummy; } ;


 int __fl_put (struct cls_fl_filter*) ;

__attribute__((used)) static void fl_put(struct tcf_proto *tp, void *arg)
{
 struct cls_fl_filter *f = arg;

 __fl_put(f);
}
