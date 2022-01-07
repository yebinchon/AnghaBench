
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct nlattr {int dummy; } ;
struct datapath {int dummy; } ;
struct check_pkt_len_arg {scalar_t__ pkt_len; int exec_for_greater; int exec_for_lesser_equal; } ;


 int clone_execute (struct datapath*,struct sk_buff*,struct sw_flow_key*,int ,void*,int,int,int) ;
 void* nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 struct nlattr* nla_next (struct nlattr const*,int*) ;

__attribute__((used)) static int execute_check_pkt_len(struct datapath *dp, struct sk_buff *skb,
     struct sw_flow_key *key,
     const struct nlattr *attr, bool last)
{
 const struct nlattr *actions, *cpl_arg;
 const struct check_pkt_len_arg *arg;
 int rem = nla_len(attr);
 bool clone_flow_key;




 cpl_arg = nla_data(attr);
 arg = nla_data(cpl_arg);

 if (skb->len <= arg->pkt_len) {



  actions = nla_next(cpl_arg, &rem);
  clone_flow_key = !arg->exec_for_lesser_equal;
 } else {



  actions = nla_next(cpl_arg, &rem);
  actions = nla_next(actions, &rem);
  clone_flow_key = !arg->exec_for_greater;
 }

 return clone_execute(dp, skb, key, 0, nla_data(actions),
        nla_len(actions), last, clone_flow_key);
}
