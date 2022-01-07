
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct element {int datalen; } ;
typedef int match ;


 scalar_t__ WARN_ON (int) ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 struct element* cfg80211_find_elem_match (int ,unsigned int const*,unsigned int,unsigned int*,int,int ) ;

const struct element *cfg80211_find_vendor_elem(unsigned int oui, int oui_type,
      const u8 *ies,
      unsigned int len)
{
 const struct element *elem;
 u8 match[] = { oui >> 16, oui >> 8, oui, oui_type };
 int match_len = (oui_type < 0) ? 3 : sizeof(match);

 if (WARN_ON(oui_type > 0xff))
  return ((void*)0);

 elem = cfg80211_find_elem_match(WLAN_EID_VENDOR_SPECIFIC, ies, len,
     match, match_len, 0);

 if (!elem || elem->datalen < 4)
  return ((void*)0);

 return elem;
}
