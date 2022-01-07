
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct element {int dummy; } ;
typedef int gfp_t ;


 int const WLAN_EID_EXTENSION ;
 int WLAN_EID_EXT_NON_INHERITANCE ;
 int const WLAN_EID_NON_TX_BSSID_CAP ;
 int const WLAN_EID_SSID ;
 int const WLAN_EID_VENDOR_SPECIFIC ;
 struct element* cfg80211_find_ext_elem (int ,int*,size_t) ;
 scalar_t__ cfg80211_find_ext_ie (int const,int*,size_t) ;
 int* cfg80211_find_ie (int const,int const*,size_t) ;
 scalar_t__ cfg80211_is_element_inherited (struct element const*,struct element const*) ;
 int kfree (int*) ;
 int* kmemdup (int const*,size_t,int ) ;
 int memcmp (int const*,int*,int) ;
 int memcpy (int*,int const*,int const) ;

__attribute__((used)) static size_t cfg80211_gen_new_ie(const u8 *ie, size_t ielen,
      const u8 *subelement, size_t subie_len,
      u8 *new_ie, gfp_t gfp)
{
 u8 *pos, *tmp;
 const u8 *tmp_old, *tmp_new;
 const struct element *non_inherit_elem;
 u8 *sub_copy;




 sub_copy = kmemdup(subelement, subie_len, gfp);
 if (!sub_copy)
  return 0;

 pos = &new_ie[0];


 tmp_new = cfg80211_find_ie(WLAN_EID_SSID, sub_copy, subie_len);
 if (tmp_new) {
  memcpy(pos, tmp_new, tmp_new[1] + 2);
  pos += (tmp_new[1] + 2);
 }


 non_inherit_elem =
  cfg80211_find_ext_elem(WLAN_EID_EXT_NON_INHERITANCE,
           sub_copy, subie_len);




 tmp_old = cfg80211_find_ie(WLAN_EID_SSID, ie, ielen);
 tmp_old = (tmp_old) ? tmp_old + tmp_old[1] + 2 : ie;

 while (tmp_old + tmp_old[1] + 2 - ie <= ielen) {
  if (tmp_old[0] == 0) {
   tmp_old++;
   continue;
  }

  if (tmp_old[0] == WLAN_EID_EXTENSION)
   tmp = (u8 *)cfg80211_find_ext_ie(tmp_old[2], sub_copy,
        subie_len);
  else
   tmp = (u8 *)cfg80211_find_ie(tmp_old[0], sub_copy,
           subie_len);

  if (!tmp) {
   const struct element *old_elem = (void *)tmp_old;


   if (cfg80211_is_element_inherited(old_elem,
         non_inherit_elem)) {
    memcpy(pos, tmp_old, tmp_old[1] + 2);
    pos += tmp_old[1] + 2;
   }
  } else {







   if (tmp_old[0] == WLAN_EID_VENDOR_SPECIFIC) {
    if (!memcmp(tmp_old + 2, tmp + 2, 5)) {



     memcpy(pos, tmp, tmp[1] + 2);
     pos += tmp[1] + 2;
     tmp[0] = WLAN_EID_SSID;
    } else {
     memcpy(pos, tmp_old, tmp_old[1] + 2);
     pos += tmp_old[1] + 2;
    }
   } else {

    memcpy(pos, tmp, tmp[1] + 2);
    pos += tmp[1] + 2;
    tmp[0] = WLAN_EID_SSID;
   }
  }

  if (tmp_old + tmp_old[1] + 2 - ie == ielen)
   break;

  tmp_old += tmp_old[1] + 2;
 }




 tmp_new = sub_copy;
 while (tmp_new + tmp_new[1] + 2 - sub_copy <= subie_len) {
  if (!(tmp_new[0] == WLAN_EID_NON_TX_BSSID_CAP ||
        tmp_new[0] == WLAN_EID_SSID)) {
   memcpy(pos, tmp_new, tmp_new[1] + 2);
   pos += tmp_new[1] + 2;
  }
  if (tmp_new + tmp_new[1] + 2 - sub_copy == subie_len)
   break;
  tmp_new += tmp_new[1] + 2;
 }

 kfree(sub_copy);
 return pos - new_ie;
}
