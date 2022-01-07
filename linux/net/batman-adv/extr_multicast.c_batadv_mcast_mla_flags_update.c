
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_tvlv_mcast_data {int reserved; int flags; } ;
struct batadv_mcast_mla_flags {int tvlv_flags; } ;
struct TYPE_2__ {struct batadv_mcast_mla_flags mla_flags; } ;
struct batadv_priv {TYPE_1__ mcast; } ;
typedef int mcast_data ;


 int BATADV_TVLV_MCAST ;
 int batadv_mcast_bridge_log (struct batadv_priv*,struct batadv_mcast_mla_flags*) ;
 int batadv_mcast_flags_log (struct batadv_priv*,int ) ;
 int batadv_tvlv_container_register (struct batadv_priv*,int ,int,struct batadv_tvlv_mcast_data*,int) ;
 int memcmp (struct batadv_mcast_mla_flags*,struct batadv_mcast_mla_flags*,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void
batadv_mcast_mla_flags_update(struct batadv_priv *bat_priv,
         struct batadv_mcast_mla_flags *flags)
{
 struct batadv_tvlv_mcast_data mcast_data;

 if (!memcmp(flags, &bat_priv->mcast.mla_flags, sizeof(*flags)))
  return;

 batadv_mcast_bridge_log(bat_priv, flags);
 batadv_mcast_flags_log(bat_priv, flags->tvlv_flags);

 mcast_data.flags = flags->tvlv_flags;
 memset(mcast_data.reserved, 0, sizeof(mcast_data.reserved));

 batadv_tvlv_container_register(bat_priv, BATADV_TVLV_MCAST, 2,
           &mcast_data, sizeof(mcast_data));

 bat_priv->mcast.mla_flags = *flags;
}
