
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u8 ;
struct element {scalar_t__ const* data; int datalen; scalar_t__ id; } ;


 int WLAN_EID_MULTIPLE_BSSID ;
 scalar_t__ WLAN_EID_NON_TX_BSSID_CAP ;
 struct element* cfg80211_find_elem (int ,scalar_t__ const*,size_t) ;

__attribute__((used)) static const struct element
*cfg80211_get_profile_continuation(const u8 *ie, size_t ielen,
       const struct element *mbssid_elem,
       const struct element *sub_elem)
{
 const u8 *mbssid_end = mbssid_elem->data + mbssid_elem->datalen;
 const struct element *next_mbssid;
 const struct element *next_sub;

 next_mbssid = cfg80211_find_elem(WLAN_EID_MULTIPLE_BSSID,
      mbssid_end,
      ielen - (mbssid_end - ie));





 if ((sub_elem->data + sub_elem->datalen < mbssid_end - 1) ||
     !next_mbssid)
  return ((void*)0);



 if (next_mbssid->datalen < 4)
  return ((void*)0);

 next_sub = (void *)&next_mbssid->data[1];

 if (next_mbssid->data + next_mbssid->datalen <
     next_sub->data + next_sub->datalen)
  return ((void*)0);

 if (next_sub->id != 0 || next_sub->datalen < 2)
  return ((void*)0);





 return next_sub->data[0] == WLAN_EID_NON_TX_BSSID_CAP ?
        ((void*)0) : next_mbssid;
}
