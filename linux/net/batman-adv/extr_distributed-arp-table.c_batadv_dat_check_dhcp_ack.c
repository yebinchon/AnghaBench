
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;


 int BATADV_BOOTREPLY ;
 int BATADV_DHCPACK ;
 int batadv_dat_check_dhcp (struct sk_buff*,int ,int *) ;
 int batadv_dat_dhcp_get_yiaddr (struct sk_buff*,int *) ;
 int batadv_dat_get_dhcp_chaddr (struct sk_buff*,int *) ;
 int batadv_dat_get_dhcp_message_type (struct sk_buff*) ;

__attribute__((used)) static bool
batadv_dat_check_dhcp_ack(struct sk_buff *skb, __be16 proto, __be32 *ip_src,
     u8 *chaddr, __be32 *yiaddr)
{
 int type;

 type = batadv_dat_check_dhcp(skb, proto, ip_src);
 if (type != BATADV_BOOTREPLY)
  return 0;

 type = batadv_dat_get_dhcp_message_type(skb);
 if (type != BATADV_DHCPACK)
  return 0;

 if (!batadv_dat_dhcp_get_yiaddr(skb, yiaddr))
  return 0;

 if (!batadv_dat_get_dhcp_chaddr(skb, chaddr))
  return 0;

 return 1;
}
