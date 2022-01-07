
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_walker {int nonempty; int fn; } ;
struct tcf_proto {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* walk ) (struct tcf_proto*,struct tcf_walker*,int) ;} ;


 int stub1 (struct tcf_proto*,struct tcf_walker*,int) ;
 int walker_check_empty ;

__attribute__((used)) static bool tcf_proto_is_empty(struct tcf_proto *tp, bool rtnl_held)
{
 struct tcf_walker walker = { .fn = walker_check_empty, };

 if (tp->ops->walk) {
  tp->ops->walk(tp, &walker, rtnl_held);
  return !walker.nonempty;
 }
 return 1;
}
