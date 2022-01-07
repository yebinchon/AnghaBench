
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct flow_keys {int dummy; } ;


 int ___skb_get_hash (struct sk_buff*,struct flow_keys*,int *) ;
 int __flow_hash_secret_init () ;
 int __skb_set_sw_hash (struct sk_buff*,int ,int ) ;
 int flow_keys_have_l4 (struct flow_keys*) ;
 int hashrnd ;

void __skb_get_hash(struct sk_buff *skb)
{
 struct flow_keys keys;
 u32 hash;

 __flow_hash_secret_init();

 hash = ___skb_get_hash(skb, &keys, &hashrnd);

 __skb_set_sw_hash(skb, hash, flow_keys_have_l4(&keys));
}
