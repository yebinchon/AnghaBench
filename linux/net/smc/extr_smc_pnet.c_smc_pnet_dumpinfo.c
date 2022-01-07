
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smc_user_pnetentry {int dummy; } ;
struct sk_buff {int dummy; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int SMC_PNETID_GET ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int smc_pnet_nl_family ;
 scalar_t__ smc_pnet_set_nla (struct sk_buff*,struct smc_user_pnetentry*) ;

__attribute__((used)) static int smc_pnet_dumpinfo(struct sk_buff *skb,
        u32 portid, u32 seq, u32 flags,
        struct smc_user_pnetentry *pnetelem)
{
 void *hdr;

 hdr = genlmsg_put(skb, portid, seq, &smc_pnet_nl_family,
     flags, SMC_PNETID_GET);
 if (!hdr)
  return -ENOMEM;
 if (smc_pnet_set_nla(skb, pnetelem) < 0) {
  genlmsg_cancel(skb, hdr);
  return -EMSGSIZE;
 }
 genlmsg_end(skb, hdr);
 return 0;
}
