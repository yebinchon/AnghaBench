
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int ETH_ALEN ;
 size_t NL80211_ATTR_MAC ;
 size_t NL80211_ATTR_MAC_MASK ;
 int eth_zero_addr (int*) ;
 scalar_t__ is_multicast_ether_addr (int*) ;
 int memcpy (int*,int ,int) ;
 int nla_data (struct nlattr*) ;

int nl80211_parse_random_mac(struct nlattr **attrs,
        u8 *mac_addr, u8 *mac_addr_mask)
{
 int i;

 if (!attrs[NL80211_ATTR_MAC] && !attrs[NL80211_ATTR_MAC_MASK]) {
  eth_zero_addr(mac_addr);
  eth_zero_addr(mac_addr_mask);
  mac_addr[0] = 0x2;
  mac_addr_mask[0] = 0x3;

  return 0;
 }


 if (!attrs[NL80211_ATTR_MAC] || !attrs[NL80211_ATTR_MAC_MASK])
  return -EINVAL;

 memcpy(mac_addr, nla_data(attrs[NL80211_ATTR_MAC]), ETH_ALEN);
 memcpy(mac_addr_mask, nla_data(attrs[NL80211_ATTR_MAC_MASK]), ETH_ALEN);


 if (!is_multicast_ether_addr(mac_addr_mask) ||
     is_multicast_ether_addr(mac_addr))
  return -EINVAL;






 for (i = 0; i < ETH_ALEN; i++)
  mac_addr[i] &= mac_addr_mask[i];

 return 0;
}
