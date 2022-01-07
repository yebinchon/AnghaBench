
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
typedef int flags_mask ;
typedef int __be32 ;


 int FLOW_DIS_FIRST_FRAG ;
 int FLOW_DIS_IS_FRAGMENT ;
 int TCA_FLOWER_KEY_FLAGS ;
 int TCA_FLOWER_KEY_FLAGS_FRAG_IS_FIRST ;
 int TCA_FLOWER_KEY_FLAGS_IS_FRAGMENT ;
 int TCA_FLOWER_KEY_FLAGS_MASK ;
 int cpu_to_be32 (scalar_t__) ;
 int fl_get_key_flag (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,int ,int ) ;
 int memchr_inv (scalar_t__*,int ,int) ;
 int nla_put (struct sk_buff*,int ,int,int *) ;

__attribute__((used)) static int fl_dump_key_flags(struct sk_buff *skb, u32 flags_key, u32 flags_mask)
{
 u32 key, mask;
 __be32 _key, _mask;
 int err;

 if (!memchr_inv(&flags_mask, 0, sizeof(flags_mask)))
  return 0;

 key = 0;
 mask = 0;

 fl_get_key_flag(flags_key, flags_mask, &key, &mask,
   TCA_FLOWER_KEY_FLAGS_IS_FRAGMENT, FLOW_DIS_IS_FRAGMENT);
 fl_get_key_flag(flags_key, flags_mask, &key, &mask,
   TCA_FLOWER_KEY_FLAGS_FRAG_IS_FIRST,
   FLOW_DIS_FIRST_FRAG);

 _key = cpu_to_be32(key);
 _mask = cpu_to_be32(mask);

 err = nla_put(skb, TCA_FLOWER_KEY_FLAGS, 4, &_key);
 if (err)
  return err;

 return nla_put(skb, TCA_FLOWER_KEY_FLAGS_MASK, 4, &_mask);
}
