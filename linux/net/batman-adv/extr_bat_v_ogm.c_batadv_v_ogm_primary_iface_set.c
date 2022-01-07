
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ogm_buff_mutex; scalar_t__ ogm_buff; } ;
struct batadv_priv {TYPE_2__ bat_v; } ;
struct batadv_ogm2_packet {int orig; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; int soft_iface; } ;
struct TYPE_3__ {int dev_addr; } ;


 int ether_addr_copy (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct batadv_priv* netdev_priv (int ) ;

void batadv_v_ogm_primary_iface_set(struct batadv_hard_iface *primary_iface)
{
 struct batadv_priv *bat_priv = netdev_priv(primary_iface->soft_iface);
 struct batadv_ogm2_packet *ogm_packet;

 mutex_lock(&bat_priv->bat_v.ogm_buff_mutex);
 if (!bat_priv->bat_v.ogm_buff)
  goto unlock;

 ogm_packet = (struct batadv_ogm2_packet *)bat_priv->bat_v.ogm_buff;
 ether_addr_copy(ogm_packet->orig, primary_iface->net_dev->dev_addr);

unlock:
 mutex_unlock(&bat_priv->bat_v.ogm_buff_mutex);
}
