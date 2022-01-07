
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211s_hdr {int flags; } ;


 unsigned int __ieee80211_get_mesh_hdrlen (int ) ;

unsigned int ieee80211_get_mesh_hdrlen(struct ieee80211s_hdr *meshhdr)
{
 return __ieee80211_get_mesh_hdrlen(meshhdr->flags);
}
