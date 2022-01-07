
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct element {size_t datalen; int * data; } ;


 struct element* cfg80211_get_profile_continuation (int const*,size_t,struct element const*,struct element const*) ;
 int memcpy (int *,int *,size_t) ;

size_t cfg80211_merge_profile(const u8 *ie, size_t ielen,
         const struct element *mbssid_elem,
         const struct element *sub_elem,
         u8 *merged_ie, size_t max_copy_len)
{
 size_t copied_len = sub_elem->datalen;
 const struct element *next_mbssid;

 if (sub_elem->datalen > max_copy_len)
  return 0;

 memcpy(merged_ie, sub_elem->data, sub_elem->datalen);

 while ((next_mbssid = cfg80211_get_profile_continuation(ie, ielen,
        mbssid_elem,
        sub_elem))) {
  const struct element *next_sub = (void *)&next_mbssid->data[1];

  if (copied_len + next_sub->datalen > max_copy_len)
   break;
  memcpy(merged_ie + copied_len, next_sub->data,
         next_sub->datalen);
  copied_len += next_sub->datalen;
 }

 return copied_len;
}
