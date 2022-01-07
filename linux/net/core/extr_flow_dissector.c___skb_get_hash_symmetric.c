
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct flow_keys {int dummy; } ;
typedef int keys ;


 int FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL ;
 int __flow_hash_from_keys (struct flow_keys*,int *) ;
 int __flow_hash_secret_init () ;
 int __skb_flow_dissect (int *,struct sk_buff const*,int *,struct flow_keys*,int *,int ,int ,int ,int ) ;
 int flow_keys_dissector_symmetric ;
 int hashrnd ;
 int memset (struct flow_keys*,int ,int) ;

u32 __skb_get_hash_symmetric(const struct sk_buff *skb)
{
 struct flow_keys keys;

 __flow_hash_secret_init();

 memset(&keys, 0, sizeof(keys));
 __skb_flow_dissect(((void*)0), skb, &flow_keys_dissector_symmetric,
      &keys, ((void*)0), 0, 0, 0,
      FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL);

 return __flow_hash_from_keys(&keys, &hashrnd);
}
