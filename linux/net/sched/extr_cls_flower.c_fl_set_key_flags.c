
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int FLOW_DIS_FIRST_FRAG ;
 int FLOW_DIS_IS_FRAGMENT ;
 size_t TCA_FLOWER_KEY_FLAGS ;
 int TCA_FLOWER_KEY_FLAGS_FRAG_IS_FIRST ;
 int TCA_FLOWER_KEY_FLAGS_IS_FRAGMENT ;
 size_t TCA_FLOWER_KEY_FLAGS_MASK ;
 scalar_t__ be32_to_cpu (int ) ;
 int fl_set_key_flag (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,int ,int ) ;
 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static int fl_set_key_flags(struct nlattr **tb,
       u32 *flags_key, u32 *flags_mask)
{
 u32 key, mask;


 if (!tb[TCA_FLOWER_KEY_FLAGS_MASK])
  return -EINVAL;

 key = be32_to_cpu(nla_get_u32(tb[TCA_FLOWER_KEY_FLAGS]));
 mask = be32_to_cpu(nla_get_u32(tb[TCA_FLOWER_KEY_FLAGS_MASK]));

 *flags_key = 0;
 *flags_mask = 0;

 fl_set_key_flag(key, mask, flags_key, flags_mask,
   TCA_FLOWER_KEY_FLAGS_IS_FRAGMENT, FLOW_DIS_IS_FRAGMENT);
 fl_set_key_flag(key, mask, flags_key, flags_mask,
   TCA_FLOWER_KEY_FLAGS_FRAG_IS_FIRST,
   FLOW_DIS_FIRST_FRAG);

 return 0;
}
