
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;


 int WLAN_BSS_COEX_INFORMATION_REQUEST ;
 int WLAN_EID_BSS_COEX_2040 ;
 int * skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void ieee80211_tdls_add_bss_coex_ie(struct sk_buff *skb)
{
 u8 *pos = skb_put(skb, 3);

 *pos++ = WLAN_EID_BSS_COEX_2040;
 *pos++ = 1;

 *pos++ = WLAN_BSS_COEX_INFORMATION_REQUEST;
}
