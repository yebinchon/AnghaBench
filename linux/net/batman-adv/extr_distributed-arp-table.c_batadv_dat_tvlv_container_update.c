
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int distributed_arp_table; } ;


 int BATADV_TVLV_DAT ;
 char atomic_read (int *) ;
 int batadv_tvlv_container_register (struct batadv_priv*,int ,int,int *,int ) ;
 int batadv_tvlv_container_unregister (struct batadv_priv*,int ,int) ;

__attribute__((used)) static void batadv_dat_tvlv_container_update(struct batadv_priv *bat_priv)
{
 char dat_mode;

 dat_mode = atomic_read(&bat_priv->distributed_arp_table);

 switch (dat_mode) {
 case 0:
  batadv_tvlv_container_unregister(bat_priv, BATADV_TVLV_DAT, 1);
  break;
 case 1:
  batadv_tvlv_container_register(bat_priv, BATADV_TVLV_DAT, 1,
            ((void*)0), 0);
  break;
 }
}
