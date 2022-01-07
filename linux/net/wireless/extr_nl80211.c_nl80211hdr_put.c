
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;


 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int ) ;
 int nl80211_fam ;

void *nl80211hdr_put(struct sk_buff *skb, u32 portid, u32 seq,
       int flags, u8 cmd)
{

 return genlmsg_put(skb, portid, seq, &nl80211_fam, flags, cmd);
}
