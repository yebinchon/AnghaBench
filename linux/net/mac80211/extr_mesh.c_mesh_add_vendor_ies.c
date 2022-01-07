
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_if_mesh {scalar_t__* ie; scalar_t__ ie_len; } ;
struct TYPE_2__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;


 int ENOMEM ;
 scalar_t__ ieee80211_ie_split_vendor (scalar_t__*,scalar_t__,int ) ;
 int skb_put_data (struct sk_buff*,scalar_t__ const*,scalar_t__) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;

int mesh_add_vendor_ies(struct ieee80211_sub_if_data *sdata,
   struct sk_buff *skb)
{
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 u8 offset, len;
 const u8 *data;

 if (!ifmsh->ie || !ifmsh->ie_len)
  return 0;


 offset = ieee80211_ie_split_vendor(ifmsh->ie, ifmsh->ie_len, 0);

 if (offset < ifmsh->ie_len) {
  len = ifmsh->ie_len - offset;
  data = ifmsh->ie + offset;
  if (skb_tailroom(skb) < len)
   return -ENOMEM;
  skb_put_data(skb, data, len);
 }

 return 0;
}
