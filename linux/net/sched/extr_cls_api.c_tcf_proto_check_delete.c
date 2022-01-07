
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int deleting; int lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ tcf_proto_is_empty (struct tcf_proto*,int) ;

__attribute__((used)) static bool tcf_proto_check_delete(struct tcf_proto *tp, bool rtnl_held)
{
 spin_lock(&tp->lock);
 if (tcf_proto_is_empty(tp, rtnl_held))
  tp->deleting = 1;
 spin_unlock(&tp->lock);
 return tp->deleting;
}
