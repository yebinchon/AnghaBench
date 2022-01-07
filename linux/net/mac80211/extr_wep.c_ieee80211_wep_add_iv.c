
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__* hw_key; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct ieee80211_local {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_3__ {int flags; } ;


 int IEEE80211_FCTL_PROTECTED ;
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ IEEE80211_WEP_IV_LEN ;
 scalar_t__ WARN_ON (int) ;
 int cpu_to_le16 (int ) ;
 unsigned int ieee80211_hdrlen (int ) ;
 int ieee80211_wep_get_iv (struct ieee80211_local*,int,int,int *) ;
 int memmove (int *,int *,unsigned int) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int * skb_push (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static u8 *ieee80211_wep_add_iv(struct ieee80211_local *local,
    struct sk_buff *skb,
    int keylen, int keyidx)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 unsigned int hdrlen;
 u8 *newhdr;

 hdr->frame_control |= cpu_to_le16(IEEE80211_FCTL_PROTECTED);

 if (WARN_ON(skb_headroom(skb) < IEEE80211_WEP_IV_LEN))
  return ((void*)0);

 hdrlen = ieee80211_hdrlen(hdr->frame_control);
 newhdr = skb_push(skb, IEEE80211_WEP_IV_LEN);
 memmove(newhdr, newhdr + IEEE80211_WEP_IV_LEN, hdrlen);


 if (info->control.hw_key &&
     (info->control.hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE))
  return newhdr + hdrlen;

 ieee80211_wep_get_iv(local, keylen, keyidx, newhdr + hdrlen);
 return newhdr + hdrlen;
}
