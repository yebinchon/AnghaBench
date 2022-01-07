
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int flags; } ;
struct batadv_tt_global_entry {TYPE_1__ common; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_TT_CLIENT_ISOLA ;
 int batadv_tt_global_entry_put (struct batadv_tt_global_entry*) ;
 struct batadv_tt_global_entry* batadv_tt_global_hash_find (struct batadv_priv*,int const*,unsigned short) ;

bool batadv_tt_global_is_isolated(struct batadv_priv *bat_priv,
      const u8 *addr, unsigned short vid)
{
 struct batadv_tt_global_entry *tt;
 bool ret;

 tt = batadv_tt_global_hash_find(bat_priv, addr, vid);
 if (!tt)
  return 0;

 ret = tt->common.flags & BATADV_TT_CLIENT_ISOLA;

 batadv_tt_global_entry_put(tt);

 return ret;
}
