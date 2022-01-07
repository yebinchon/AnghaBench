
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct element {scalar_t__ id; int datalen; int* data; } ;


 scalar_t__ WLAN_EID_EXTENSION ;
 scalar_t__ WLAN_EID_MULTIPLE_BSSID ;

bool cfg80211_is_element_inherited(const struct element *elem,
       const struct element *non_inherit_elem)
{
 u8 id_len, ext_id_len, i, loop_len, id;
 const u8 *list;

 if (elem->id == WLAN_EID_MULTIPLE_BSSID)
  return 0;

 if (!non_inherit_elem || non_inherit_elem->datalen < 2)
  return 1;
 id_len = non_inherit_elem->data[1];
 if (non_inherit_elem->datalen < 3 + id_len)
  return 1;

 ext_id_len = non_inherit_elem->data[2 + id_len];
 if (non_inherit_elem->datalen < 3 + id_len + ext_id_len)
  return 1;

 if (elem->id == WLAN_EID_EXTENSION) {
  if (!ext_id_len)
   return 1;
  loop_len = ext_id_len;
  list = &non_inherit_elem->data[3 + id_len];
  id = elem->data[0];
 } else {
  if (!id_len)
   return 1;
  loop_len = id_len;
  list = &non_inherit_elem->data[2];
  id = elem->id;
 }

 for (i = 0; i < loop_len; i++) {
  if (list[i] == id)
   return 0;
 }

 return 1;
}
