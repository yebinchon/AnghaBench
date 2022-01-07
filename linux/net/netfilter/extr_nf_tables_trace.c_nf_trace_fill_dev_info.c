
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int type; int ifindex; } ;


 int NFTA_TRACE_IIF ;
 int NFTA_TRACE_IIFTYPE ;
 int NFTA_TRACE_OIF ;
 int NFTA_TRACE_OIFTYPE ;
 int htonl (int ) ;
 int htons (int ) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nf_trace_fill_dev_info(struct sk_buff *nlskb,
      const struct net_device *indev,
      const struct net_device *outdev)
{
 if (indev) {
  if (nla_put_be32(nlskb, NFTA_TRACE_IIF,
     htonl(indev->ifindex)))
   return -1;

  if (nla_put_be16(nlskb, NFTA_TRACE_IIFTYPE,
     htons(indev->type)))
   return -1;
 }

 if (outdev) {
  if (nla_put_be32(nlskb, NFTA_TRACE_OIF,
     htonl(outdev->ifindex)))
   return -1;

  if (nla_put_be16(nlskb, NFTA_TRACE_OIFTYPE,
     htons(outdev->type)))
   return -1;
 }

 return 0;
}
