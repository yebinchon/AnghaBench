
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct batadv_tt_common_entry {int vid; int addr; } ;


 int ETH_ALEN ;
 int jhash (int *,int,int) ;

__attribute__((used)) static inline u32 batadv_choose_tt(const void *data, u32 size)
{
 struct batadv_tt_common_entry *tt;
 u32 hash = 0;

 tt = (struct batadv_tt_common_entry *)data;
 hash = jhash(&tt->addr, ETH_ALEN, hash);
 hash = jhash(&tt->vid, sizeof(tt->vid), hash);

 return hash % size;
}
