
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int bcast_duplist_curr; int bcast_duplist_lock; struct batadv_bcast_duplist_entry* bcast_duplist; } ;
struct batadv_priv {TYPE_1__ bla; } ;
struct batadv_bcast_packet {int orig; } ;
struct batadv_bcast_duplist_entry {scalar_t__ crc; int orig; int entrytime; } ;
typedef scalar_t__ __be32 ;


 int BATADV_DUPLIST_SIZE ;
 int BATADV_DUPLIST_TIMEOUT ;
 scalar_t__ batadv_compare_eth (int ,int ) ;
 scalar_t__ batadv_has_timed_out (int ,int ) ;
 scalar_t__ batadv_skb_crc32 (struct sk_buff*,int *) ;
 int ether_addr_copy (int ,int ) ;
 int jiffies ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

bool batadv_bla_check_bcast_duplist(struct batadv_priv *bat_priv,
        struct sk_buff *skb)
{
 int i, curr;
 __be32 crc;
 struct batadv_bcast_packet *bcast_packet;
 struct batadv_bcast_duplist_entry *entry;
 bool ret = 0;

 bcast_packet = (struct batadv_bcast_packet *)skb->data;


 crc = batadv_skb_crc32(skb, (u8 *)(bcast_packet + 1));

 spin_lock_bh(&bat_priv->bla.bcast_duplist_lock);

 for (i = 0; i < BATADV_DUPLIST_SIZE; i++) {
  curr = (bat_priv->bla.bcast_duplist_curr + i);
  curr %= BATADV_DUPLIST_SIZE;
  entry = &bat_priv->bla.bcast_duplist[curr];




  if (batadv_has_timed_out(entry->entrytime,
      BATADV_DUPLIST_TIMEOUT))
   break;

  if (entry->crc != crc)
   continue;

  if (batadv_compare_eth(entry->orig, bcast_packet->orig))
   continue;




  ret = 1;
  goto out;
 }



 curr = (bat_priv->bla.bcast_duplist_curr + BATADV_DUPLIST_SIZE - 1);
 curr %= BATADV_DUPLIST_SIZE;
 entry = &bat_priv->bla.bcast_duplist[curr];
 entry->crc = crc;
 entry->entrytime = jiffies;
 ether_addr_copy(entry->orig, bcast_packet->orig);
 bat_priv->bla.bcast_duplist_curr = curr;

out:
 spin_unlock_bh(&bat_priv->bla.bcast_duplist_lock);

 return ret;
}
