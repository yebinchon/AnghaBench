
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct batadv_tvlv_gateway_data {void* bandwidth_up; void* bandwidth_down; } ;
struct TYPE_2__ {int bandwidth_up; int bandwidth_down; int mode; } ;
struct batadv_priv {TYPE_1__ gw; } ;
typedef int gw ;





 int BATADV_TVLV_GW ;
 void* atomic_read (int *) ;
 int batadv_tvlv_container_register (struct batadv_priv*,int ,int,struct batadv_tvlv_gateway_data*,int) ;
 int batadv_tvlv_container_unregister (struct batadv_priv*,int ,int) ;
 void* htonl (void*) ;

void batadv_gw_tvlv_container_update(struct batadv_priv *bat_priv)
{
 struct batadv_tvlv_gateway_data gw;
 u32 down, up;
 char gw_mode;

 gw_mode = atomic_read(&bat_priv->gw.mode);

 switch (gw_mode) {
 case 129:
 case 130:
  batadv_tvlv_container_unregister(bat_priv, BATADV_TVLV_GW, 1);
  break;
 case 128:
  down = atomic_read(&bat_priv->gw.bandwidth_down);
  up = atomic_read(&bat_priv->gw.bandwidth_up);
  gw.bandwidth_down = htonl(down);
  gw.bandwidth_up = htonl(up);
  batadv_tvlv_container_register(bat_priv, BATADV_TVLV_GW, 1,
            &gw, sizeof(gw));
  break;
 }
}
