
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct batadv_ogm_packet {int prev_sender; int orig; } ;
struct TYPE_3__ {int ogm_buff_mutex; void* ogm_buff; } ;
struct batadv_hard_iface {TYPE_1__ bat_iv; TYPE_2__* net_dev; } ;
struct TYPE_4__ {int dev_addr; } ;


 int ether_addr_copy (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void batadv_iv_ogm_iface_update_mac(struct batadv_hard_iface *hard_iface)
{
 struct batadv_ogm_packet *batadv_ogm_packet;
 void *ogm_buff;

 mutex_lock(&hard_iface->bat_iv.ogm_buff_mutex);

 ogm_buff = hard_iface->bat_iv.ogm_buff;
 if (!ogm_buff)
  goto unlock;

 batadv_ogm_packet = ogm_buff;
 ether_addr_copy(batadv_ogm_packet->orig,
   hard_iface->net_dev->dev_addr);
 ether_addr_copy(batadv_ogm_packet->prev_sender,
   hard_iface->net_dev->dev_addr);

unlock:
 mutex_unlock(&hard_iface->bat_iv.ogm_buff_mutex);
}
