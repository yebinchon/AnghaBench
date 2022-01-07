
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct mr_table {int dummy; } ;
struct mr_mfc {int dummy; } ;
struct mfc_cache {int dummy; } ;


 int ipmr_fill_mroute (struct mr_table*,struct sk_buff*,int ,int ,struct mfc_cache*,int,int) ;

__attribute__((used)) static int _ipmr_fill_mroute(struct mr_table *mrt, struct sk_buff *skb,
        u32 portid, u32 seq, struct mr_mfc *c, int cmd,
        int flags)
{
 return ipmr_fill_mroute(mrt, skb, portid, seq, (struct mfc_cache *)c,
    cmd, flags);
}
