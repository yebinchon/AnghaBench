
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct batadv_tvlv_tt_change {int flags; int vid; int addr; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int capa_initialized; } ;


 int BATADV_ORIG_CAPA_HAS_TT ;
 int BATADV_TT_CLIENT_DEL ;
 int BATADV_TT_CLIENT_ROAM ;
 int batadv_tt_global_add (struct batadv_priv*,struct batadv_orig_node*,int ,int ,int,int ) ;
 int batadv_tt_global_del (struct batadv_priv*,struct batadv_orig_node*,int ,int ,char*,int) ;
 int ntohs (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void _batadv_tt_update_changes(struct batadv_priv *bat_priv,
          struct batadv_orig_node *orig_node,
          struct batadv_tvlv_tt_change *tt_change,
          u16 tt_num_changes, u8 ttvn)
{
 int i;
 int roams;

 for (i = 0; i < tt_num_changes; i++) {
  if ((tt_change + i)->flags & BATADV_TT_CLIENT_DEL) {
   roams = (tt_change + i)->flags & BATADV_TT_CLIENT_ROAM;
   batadv_tt_global_del(bat_priv, orig_node,
          (tt_change + i)->addr,
          ntohs((tt_change + i)->vid),
          "tt removed by changes",
          roams);
  } else {
   if (!batadv_tt_global_add(bat_priv, orig_node,
        (tt_change + i)->addr,
        ntohs((tt_change + i)->vid),
        (tt_change + i)->flags, ttvn))






    return;
  }
 }
 set_bit(BATADV_ORIG_CAPA_HAS_TT, &orig_node->capa_initialized);
}
