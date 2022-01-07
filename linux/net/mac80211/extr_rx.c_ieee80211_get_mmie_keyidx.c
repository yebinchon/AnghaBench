
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; int len; } ;
struct ieee80211_mmie_16 {scalar_t__ element_id; int length; int key_id; } ;
struct ieee80211_mmie {scalar_t__ element_id; int length; int key_id; } ;
struct ieee80211_mgmt {int da; } ;


 scalar_t__ WLAN_EID_MMIE ;
 int ieee80211_is_robust_mgmt_frame (struct sk_buff*) ;
 int is_multicast_ether_addr (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int ieee80211_get_mmie_keyidx(struct sk_buff *skb)
{
 struct ieee80211_mgmt *hdr = (struct ieee80211_mgmt *) skb->data;
 struct ieee80211_mmie *mmie;
 struct ieee80211_mmie_16 *mmie16;

 if (skb->len < 24 + sizeof(*mmie) || !is_multicast_ether_addr(hdr->da))
  return -1;

 if (!ieee80211_is_robust_mgmt_frame(skb))
  return -1;

 mmie = (struct ieee80211_mmie *)
  (skb->data + skb->len - sizeof(*mmie));
 if (mmie->element_id == WLAN_EID_MMIE &&
     mmie->length == sizeof(*mmie) - 2)
  return le16_to_cpu(mmie->key_id);

 mmie16 = (struct ieee80211_mmie_16 *)
  (skb->data + skb->len - sizeof(*mmie16));
 if (skb->len >= 24 + sizeof(*mmie16) &&
     mmie16->element_id == WLAN_EID_MMIE &&
     mmie16->length == sizeof(*mmie16) - 2)
  return le16_to_cpu(mmie16->key_id);

 return -1;
}
