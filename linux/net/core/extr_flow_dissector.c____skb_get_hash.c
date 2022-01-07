
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct flow_keys {int dummy; } ;
typedef int siphash_key_t ;


 int FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL ;
 int __flow_hash_from_keys (struct flow_keys*,int const*) ;
 int skb_flow_dissect_flow_keys (struct sk_buff const*,struct flow_keys*,int ) ;

__attribute__((used)) static inline u32 ___skb_get_hash(const struct sk_buff *skb,
      struct flow_keys *keys,
      const siphash_key_t *keyval)
{
 skb_flow_dissect_flow_keys(skb, keys,
       FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL);

 return __flow_hash_from_keys(keys, keyval);
}
