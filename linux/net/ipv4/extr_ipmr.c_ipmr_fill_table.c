
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct mr_table {int mroute_do_wrvifwhole; int mroute_do_pim; int mroute_do_assert; int mroute_reg_vif_num; int id; int cache_resolve_queue_len; } ;


 int IPMRA_TABLE_CACHE_RES_QUEUE_LEN ;
 int IPMRA_TABLE_ID ;
 int IPMRA_TABLE_MROUTE_DO_ASSERT ;
 int IPMRA_TABLE_MROUTE_DO_PIM ;
 int IPMRA_TABLE_MROUTE_DO_WRVIFWHOLE ;
 int IPMRA_TABLE_MROUTE_REG_VIF_NUM ;
 int atomic_read (int *) ;
 scalar_t__ nla_put_s32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static bool ipmr_fill_table(struct mr_table *mrt, struct sk_buff *skb)
{
 u32 queue_len = atomic_read(&mrt->cache_resolve_queue_len);

 if (nla_put_u32(skb, IPMRA_TABLE_ID, mrt->id) ||
     nla_put_u32(skb, IPMRA_TABLE_CACHE_RES_QUEUE_LEN, queue_len) ||
     nla_put_s32(skb, IPMRA_TABLE_MROUTE_REG_VIF_NUM,
   mrt->mroute_reg_vif_num) ||
     nla_put_u8(skb, IPMRA_TABLE_MROUTE_DO_ASSERT,
         mrt->mroute_do_assert) ||
     nla_put_u8(skb, IPMRA_TABLE_MROUTE_DO_PIM, mrt->mroute_do_pim) ||
     nla_put_u8(skb, IPMRA_TABLE_MROUTE_DO_WRVIFWHOLE,
         mrt->mroute_do_wrvifwhole))
  return 0;

 return 1;
}
