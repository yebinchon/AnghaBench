
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hdr {int * addr1; int * addr2; int * addr3; int frame_control; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef int __le16 ;





 scalar_t__ ieee80211_has_a4 (int ) ;
 scalar_t__ ieee80211_has_fromds (int ) ;
 scalar_t__ ieee80211_has_tods (int ) ;
 scalar_t__ ieee80211_is_back_req (int ) ;
 scalar_t__ ieee80211_is_ctl (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 scalar_t__ ieee80211_is_pspoll (int ) ;

__attribute__((used)) static u8 *ieee80211_get_bssid(struct ieee80211_hdr *hdr, size_t len,
          enum nl80211_iftype type)
{
 __le16 fc = hdr->frame_control;

 if (ieee80211_is_data(fc)) {
  if (len < 24)
   return ((void*)0);

  if (ieee80211_has_a4(fc))
   return ((void*)0);
  if (ieee80211_has_tods(fc))
   return hdr->addr1;
  if (ieee80211_has_fromds(fc))
   return hdr->addr2;

  return hdr->addr3;
 }

 if (ieee80211_is_mgmt(fc)) {
  if (len < 24)
   return ((void*)0);
  return hdr->addr3;
 }

 if (ieee80211_is_ctl(fc)) {
  if (ieee80211_is_pspoll(fc))
   return hdr->addr1;

  if (ieee80211_is_back_req(fc)) {
   switch (type) {
   case 128:
    return hdr->addr2;
   case 130:
   case 129:
    return hdr->addr1;
   default:
    break;
   }
  }
 }

 return ((void*)0);
}
