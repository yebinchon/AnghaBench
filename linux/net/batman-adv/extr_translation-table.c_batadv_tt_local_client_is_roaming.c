
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int flags; } ;
struct batadv_tt_local_entry {TYPE_1__ common; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_TT_CLIENT_ROAM ;
 int batadv_tt_local_entry_put (struct batadv_tt_local_entry*) ;
 struct batadv_tt_local_entry* batadv_tt_local_hash_find (struct batadv_priv*,int *,unsigned short) ;

bool batadv_tt_local_client_is_roaming(struct batadv_priv *bat_priv,
           u8 *addr, unsigned short vid)
{
 struct batadv_tt_local_entry *tt_local_entry;
 bool ret = 0;

 tt_local_entry = batadv_tt_local_hash_find(bat_priv, addr, vid);
 if (!tt_local_entry)
  goto out;

 ret = tt_local_entry->common.flags & BATADV_TT_CLIENT_ROAM;
 batadv_tt_local_entry_put(tt_local_entry);
out:
 return ret;
}
