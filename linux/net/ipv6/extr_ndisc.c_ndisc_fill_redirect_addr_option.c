
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dev; } ;


 int NDISC_REDIRECT ;
 int ND_OPT_TARGET_LL_ADDR ;
 int ndisc_fill_addr_option (struct sk_buff*,int ,void*,int ) ;
 int ndisc_ops_fill_redirect_addr_option (int ,struct sk_buff*,int const*) ;

__attribute__((used)) static inline void ndisc_fill_redirect_addr_option(struct sk_buff *skb,
         void *ha,
         const u8 *ops_data)
{
 ndisc_fill_addr_option(skb, ND_OPT_TARGET_LL_ADDR, ha, NDISC_REDIRECT);
 ndisc_ops_fill_redirect_addr_option(skb->dev, skb, ops_data);
}
