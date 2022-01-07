
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct batadv_priv {int dummy; } ;
struct batadv_bla_backbone_gw {int vid; int crc_lock; int crc; } ;
typedef int __be16 ;


 int BATADV_CLAIM_TYPE_ANNOUNCE ;
 int ETH_ALEN ;
 int * batadv_announce_mac ;
 int batadv_bla_send_claim (struct batadv_priv*,int *,int ,int ) ;
 int htons (int ) ;
 int memcpy (int *,int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void batadv_bla_send_announce(struct batadv_priv *bat_priv,
         struct batadv_bla_backbone_gw *backbone_gw)
{
 u8 mac[ETH_ALEN];
 __be16 crc;

 memcpy(mac, batadv_announce_mac, 4);
 spin_lock_bh(&backbone_gw->crc_lock);
 crc = htons(backbone_gw->crc);
 spin_unlock_bh(&backbone_gw->crc_lock);
 memcpy(&mac[4], &crc, 2);

 batadv_bla_send_claim(bat_priv, mac, backbone_gw->vid,
         BATADV_CLAIM_TYPE_ANNOUNCE);
}
