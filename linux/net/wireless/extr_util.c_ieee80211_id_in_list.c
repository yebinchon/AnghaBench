
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ WARN_ON (int) ;
 scalar_t__ const WLAN_EID_EXTENSION ;

__attribute__((used)) static bool ieee80211_id_in_list(const u8 *ids, int n_ids, u8 id, bool id_ext)
{
 int i;


 if (WARN_ON(ids[n_ids - 1] == WLAN_EID_EXTENSION))
  return 0;

 i = 0;
 while (i < n_ids) {
  if (ids[i] == WLAN_EID_EXTENSION) {
   if (id_ext && (ids[i + 1] == id))
    return 1;

   i += 2;
   continue;
  }

  if (ids[i] == id && !id_ext)
   return 1;

  i++;
 }
 return 0;
}
