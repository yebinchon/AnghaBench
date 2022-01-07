
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct ieee80211_local {int dummy; } ;
struct ieee80211_key {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;


 scalar_t__ IEEE80211_WEP_IV_LEN ;
 unsigned int ieee80211_hdrlen (int ) ;
 int memmove (scalar_t__,scalar_t__,unsigned int) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void ieee80211_wep_remove_iv(struct ieee80211_local *local,
        struct sk_buff *skb,
        struct ieee80211_key *key)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 unsigned int hdrlen;

 hdrlen = ieee80211_hdrlen(hdr->frame_control);
 memmove(skb->data + IEEE80211_WEP_IV_LEN, skb->data, hdrlen);
 skb_pull(skb, IEEE80211_WEP_IV_LEN);
}
