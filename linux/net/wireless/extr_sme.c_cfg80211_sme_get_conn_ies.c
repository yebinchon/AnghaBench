
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct wireless_dev {int wiphy; } ;
struct TYPE_2__ {size_t extended_capabilities_len; size_t const* extended_capabilities; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;


 int ARRAY_SIZE (size_t const*) ;
 int ENOMEM ;
 int GFP_KERNEL ;

 size_t WLAN_EID_EXT_CAPABILITY ;





 scalar_t__ cfg80211_find_ie (size_t,size_t const*,size_t) ;
 size_t ieee80211_ie_split (size_t const*,size_t,size_t const*,int ,int ) ;
 size_t* kmalloc (size_t,int ) ;
 size_t* kmemdup (size_t const*,size_t,int ) ;
 int memcpy (size_t*,size_t const*,size_t) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static int cfg80211_sme_get_conn_ies(struct wireless_dev *wdev,
         const u8 *ies, size_t ies_len,
         const u8 **out_ies, size_t *out_ies_len)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 u8 *buf;
 size_t offs;

 if (!rdev->wiphy.extended_capabilities_len ||
     (ies && cfg80211_find_ie(WLAN_EID_EXT_CAPABILITY, ies, ies_len))) {
  *out_ies = kmemdup(ies, ies_len, GFP_KERNEL);
  if (!*out_ies)
   return -ENOMEM;
  *out_ies_len = ies_len;
  return 0;
 }

 buf = kmalloc(ies_len + rdev->wiphy.extended_capabilities_len + 2,
        GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 if (ies_len) {
  static const u8 before_extcapa[] = {

   129,
   131,
   130,
   132,
   128,
   133,
  };

  offs = ieee80211_ie_split(ies, ies_len, before_extcapa,
       ARRAY_SIZE(before_extcapa), 0);
  memcpy(buf, ies, offs);

  memcpy(buf + offs + rdev->wiphy.extended_capabilities_len + 2,
         ies + offs, ies_len - offs);
 } else {
  offs = 0;
 }


 buf[offs] = WLAN_EID_EXT_CAPABILITY;
 buf[offs + 1] = rdev->wiphy.extended_capabilities_len;
 memcpy(buf + offs + 2,
        rdev->wiphy.extended_capabilities,
        rdev->wiphy.extended_capabilities_len);

 *out_ies = buf;
 *out_ies_len = ies_len + rdev->wiphy.extended_capabilities_len + 2;

 return 0;
}
