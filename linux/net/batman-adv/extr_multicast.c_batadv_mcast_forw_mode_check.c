
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ethhdr {int h_proto; } ;
struct batadv_priv {int multicast_mode; } ;


 int CONFIG_IPV6 ;
 int EINVAL ;


 int IS_ENABLED (int ) ;
 int atomic_read (int *) ;
 int batadv_mcast_forw_mode_check_ipv4 (struct batadv_priv*,struct sk_buff*,int*,int*) ;
 int batadv_mcast_forw_mode_check_ipv6 (struct batadv_priv*,struct sk_buff*,int*,int*) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int ntohs (int ) ;

__attribute__((used)) static int batadv_mcast_forw_mode_check(struct batadv_priv *bat_priv,
     struct sk_buff *skb,
     bool *is_unsnoopable,
     int *is_routable)
{
 struct ethhdr *ethhdr = eth_hdr(skb);

 if (!atomic_read(&bat_priv->multicast_mode))
  return -EINVAL;

 switch (ntohs(ethhdr->h_proto)) {
 case 129:
  return batadv_mcast_forw_mode_check_ipv4(bat_priv, skb,
        is_unsnoopable,
        is_routable);
 case 128:
  if (!IS_ENABLED(CONFIG_IPV6))
   return -EINVAL;

  return batadv_mcast_forw_mode_check_ipv6(bat_priv, skb,
        is_unsnoopable,
        is_routable);
 default:
  return -EINVAL;
 }
}
