
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t const WLAN_EID_EXTENSION ;
 size_t const WLAN_EID_RIC_DATA ;
 int ieee80211_id_in_list (size_t const*,int,size_t const,int) ;
 size_t skip_ie (size_t const*,size_t,size_t) ;

size_t ieee80211_ie_split_ric(const u8 *ies, size_t ielen,
         const u8 *ids, int n_ids,
         const u8 *after_ric, int n_after_ric,
         size_t offset)
{
 size_t pos = offset;

 while (pos < ielen) {
  u8 ext = 0;

  if (ies[pos] == WLAN_EID_EXTENSION)
   ext = 2;
  if ((pos + ext) >= ielen)
   break;

  if (!ieee80211_id_in_list(ids, n_ids, ies[pos + ext],
       ies[pos] == WLAN_EID_EXTENSION))
   break;

  if (ies[pos] == WLAN_EID_RIC_DATA && n_after_ric) {
   pos = skip_ie(ies, ielen, pos);

   while (pos < ielen) {
    if (ies[pos] == WLAN_EID_EXTENSION)
     ext = 2;
    else
     ext = 0;

    if ((pos + ext) >= ielen)
     break;

    if (!ieee80211_id_in_list(after_ric,
         n_after_ric,
         ies[pos + ext],
         ext == 2))
     pos = skip_ie(ies, ielen, pos);
    else
     break;
   }
  } else {
   pos = skip_ie(ies, ielen, pos);
  }
 }

 return pos;
}
