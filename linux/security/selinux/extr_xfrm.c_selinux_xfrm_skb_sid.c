
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;


 scalar_t__ SECSID_NULL ;
 scalar_t__ selinux_xfrm_skb_sid_egress (struct sk_buff*) ;
 int selinux_xfrm_skb_sid_ingress (struct sk_buff*,scalar_t__*,int ) ;

int selinux_xfrm_skb_sid(struct sk_buff *skb, u32 *sid)
{
 int rc;

 rc = selinux_xfrm_skb_sid_ingress(skb, sid, 0);
 if (rc == 0 && *sid == SECSID_NULL)
  *sid = selinux_xfrm_skb_sid_egress(skb);

 return rc;
}
