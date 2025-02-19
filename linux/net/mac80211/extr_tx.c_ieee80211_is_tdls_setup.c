
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {int* data; int len; } ;


 scalar_t__ ETH_P_TDLS ;
 int WLAN_TDLS_SNAP_RFTYPE ;

__attribute__((used)) static inline bool ieee80211_is_tdls_setup(struct sk_buff *skb)
{
 u16 ethertype = (skb->data[12] << 8) | skb->data[13];

 return ethertype == ETH_P_TDLS &&
        skb->len > 14 &&
        skb->data[14] == WLAN_TDLS_SNAP_RFTYPE;
}
