
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_if_managed {int aid; } ;
struct TYPE_2__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;


 int WLAN_EID_AID ;
 int put_unaligned_le16 (int ,int *) ;
 int * skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
ieee80211_tdls_add_aid(struct ieee80211_sub_if_data *sdata, struct sk_buff *skb)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 u8 *pos = skb_put(skb, 4);

 *pos++ = WLAN_EID_AID;
 *pos++ = 2;
 put_unaligned_le16(ifmgd->aid, pos);
}
