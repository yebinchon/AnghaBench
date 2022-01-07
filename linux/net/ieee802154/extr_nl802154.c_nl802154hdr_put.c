
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;


 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int ) ;
 int nl802154_fam ;

__attribute__((used)) static inline void *nl802154hdr_put(struct sk_buff *skb, u32 portid, u32 seq,
        int flags, u8 cmd)
{

 return genlmsg_put(skb, portid, seq, &nl802154_fam, flags, cmd);
}
