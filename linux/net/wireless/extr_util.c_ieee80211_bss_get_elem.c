
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct element {int dummy; } ;
struct cfg80211_bss_ies {int len; int data; } ;
struct cfg80211_bss {int ies; } ;


 struct element const* cfg80211_find_elem (int ,int ,int ) ;
 struct cfg80211_bss_ies* rcu_dereference (int ) ;

const struct element *ieee80211_bss_get_elem(struct cfg80211_bss *bss, u8 id)
{
 const struct cfg80211_bss_ies *ies;

 ies = rcu_dereference(bss->ies);
 if (!ies)
  return ((void*)0);

 return cfg80211_find_elem(id, ies->data, ies->len);
}
