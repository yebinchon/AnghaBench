
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mld_msg {int mld_type; } ;


 int EINVAL ;
 int ENOMSG ;




 int ipv6_mc_check_mld_query (struct sk_buff*) ;
 int ipv6_mc_check_mld_reportv2 (struct sk_buff*) ;
 int ipv6_mc_may_pull (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static int ipv6_mc_check_mld_msg(struct sk_buff *skb)
{
 unsigned int len = skb_transport_offset(skb) + sizeof(struct mld_msg);
 struct mld_msg *mld;

 if (!ipv6_mc_may_pull(skb, len))
  return -EINVAL;

 mld = (struct mld_msg *)skb_transport_header(skb);

 switch (mld->mld_type) {
 case 130:
 case 129:
  return 0;
 case 128:
  return ipv6_mc_check_mld_reportv2(skb);
 case 131:
  return ipv6_mc_check_mld_query(skb);
 default:
  return -ENOMSG;
 }
}
