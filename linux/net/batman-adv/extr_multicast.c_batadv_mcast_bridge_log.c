
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_mcast_mla_flags {int querier_ipv6; int querier_ipv4; scalar_t__ bridged; } ;
struct TYPE_2__ {struct batadv_mcast_mla_flags mla_flags; } ;
struct batadv_priv {TYPE_1__ mcast; } ;


 int BATADV_DBG_MCAST ;
 int batadv_dbg (int ,struct batadv_priv*,char*) ;
 int batadv_mcast_querier_log (struct batadv_priv*,char*,int *,int *) ;

__attribute__((used)) static void
batadv_mcast_bridge_log(struct batadv_priv *bat_priv,
   struct batadv_mcast_mla_flags *new_flags)
{
 struct batadv_mcast_mla_flags *old_flags = &bat_priv->mcast.mla_flags;

 if (!old_flags->bridged && new_flags->bridged)
  batadv_dbg(BATADV_DBG_MCAST, bat_priv,
      "Bridge added: Setting Unsnoopables(U)-flag\n");
 else if (old_flags->bridged && !new_flags->bridged)
  batadv_dbg(BATADV_DBG_MCAST, bat_priv,
      "Bridge removed: Unsetting Unsnoopables(U)-flag\n");

 if (new_flags->bridged) {
  batadv_mcast_querier_log(bat_priv, "IGMP",
      &old_flags->querier_ipv4,
      &new_flags->querier_ipv4);
  batadv_mcast_querier_log(bat_priv, "MLD",
      &old_flags->querier_ipv6,
      &new_flags->querier_ipv6);
 }
}
