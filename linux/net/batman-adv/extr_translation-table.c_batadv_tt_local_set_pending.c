
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int vid; int addr; int flags; } ;
struct batadv_tt_local_entry {TYPE_1__ common; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_DBG_TT ;
 int BATADV_TT_CLIENT_PENDING ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int ,int ,char const*) ;
 int batadv_print_vid (int ) ;
 int batadv_tt_local_event (struct batadv_priv*,struct batadv_tt_local_entry*,int ) ;

__attribute__((used)) static void
batadv_tt_local_set_pending(struct batadv_priv *bat_priv,
       struct batadv_tt_local_entry *tt_local_entry,
       u16 flags, const char *message)
{
 batadv_tt_local_event(bat_priv, tt_local_entry, flags);





 tt_local_entry->common.flags |= BATADV_TT_CLIENT_PENDING;

 batadv_dbg(BATADV_DBG_TT, bat_priv,
     "Local tt entry (%pM, vid: %d) pending to be removed: %s\n",
     tt_local_entry->common.addr,
     batadv_print_vid(tt_local_entry->common.vid), message);
}
