
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;


 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int ) ;
 int nfc_genl_family ;

__attribute__((used)) static inline void *nfc_hdr_put(struct sk_buff *skb, u32 portid, u32 seq,
    int flags, u8 cmd)
{

 return genlmsg_put(skb, portid, seq, &nfc_genl_family, flags, cmd);
}
