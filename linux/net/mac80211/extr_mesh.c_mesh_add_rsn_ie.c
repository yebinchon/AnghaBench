
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_if_mesh {int ie_len; int ie; } ;
struct TYPE_2__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;


 int ENOMEM ;
 int WLAN_EID_RSN ;
 scalar_t__* cfg80211_find_ie (int ,int ,int ) ;
 int skb_put_data (struct sk_buff*,scalar_t__ const*,scalar_t__) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;

int mesh_add_rsn_ie(struct ieee80211_sub_if_data *sdata, struct sk_buff *skb)
{
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 u8 len = 0;
 const u8 *data;

 if (!ifmsh->ie || !ifmsh->ie_len)
  return 0;


 data = cfg80211_find_ie(WLAN_EID_RSN, ifmsh->ie, ifmsh->ie_len);
 if (!data)
  return 0;

 len = data[1] + 2;

 if (skb_tailroom(skb) < len)
  return -ENOMEM;
 skb_put_data(skb, data, len);

 return 0;
}
