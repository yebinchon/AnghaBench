
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sw_flow_key {int ovs_flow_hash; } ;
struct sk_buff {int dummy; } ;
struct ovs_action_hash {int hash_basis; } ;
struct nlattr {int dummy; } ;


 int jhash_1word (int,int ) ;
 struct ovs_action_hash* nla_data (struct nlattr const*) ;
 int skb_get_hash (struct sk_buff*) ;

__attribute__((used)) static void execute_hash(struct sk_buff *skb, struct sw_flow_key *key,
    const struct nlattr *attr)
{
 struct ovs_action_hash *hash_act = nla_data(attr);
 u32 hash = 0;


 hash = skb_get_hash(skb);
 hash = jhash_1word(hash, hash_act->hash_basis);
 if (!hash)
  hash = 0x1;

 key->ovs_flow_hash = hash;
}
