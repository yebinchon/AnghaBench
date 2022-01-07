
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct datapath {int dummy; } ;


 int BUG_ON (int) ;
 int clone_execute (struct datapath*,struct sk_buff*,struct sw_flow_key*,int ,int *,int ,int,int) ;
 int is_flow_key_valid (struct sw_flow_key*) ;
 int nla_get_u32 (struct nlattr const*) ;
 int ovs_flow_key_update (struct sk_buff*,struct sw_flow_key*) ;

__attribute__((used)) static int execute_recirc(struct datapath *dp, struct sk_buff *skb,
     struct sw_flow_key *key,
     const struct nlattr *a, bool last)
{
 u32 recirc_id;

 if (!is_flow_key_valid(key)) {
  int err;

  err = ovs_flow_key_update(skb, key);
  if (err)
   return err;
 }
 BUG_ON(!is_flow_key_valid(key));

 recirc_id = nla_get_u32(a);
 return clone_execute(dp, skb, key, recirc_id, ((void*)0), 0, last, 1);
}
