
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct flow_keys {int dummy; } ;
typedef int siphash_key_t ;
typedef int __u32 ;


 int ___skb_get_hash (struct sk_buff const*,struct flow_keys*,int const*) ;

__u32 skb_get_hash_perturb(const struct sk_buff *skb,
      const siphash_key_t *perturb)
{
 struct flow_keys keys;

 return ___skb_get_hash(skb, &keys, perturb);
}
