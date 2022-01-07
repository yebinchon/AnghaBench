
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct batadv_ogm_packet {int ttl; int tq; scalar_t__ reserved; int flags; int version; int packet_type; } ;
struct TYPE_2__ {unsigned char* ogm_buff; int ogm_buff_mutex; int ogm_buff_len; int ogm_seqno; } ;
struct batadv_hard_iface {TYPE_1__ bat_iv; } ;
typedef int random_seqno ;


 int BATADV_COMPAT_VERSION ;
 int BATADV_IV_OGM ;
 int BATADV_NO_FLAGS ;
 int BATADV_OGM_HLEN ;
 int BATADV_TQ_MAX_VALUE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int atomic_set (int *,int ) ;
 int get_random_bytes (int *,int) ;
 unsigned char* kmalloc (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int batadv_iv_ogm_iface_enable(struct batadv_hard_iface *hard_iface)
{
 struct batadv_ogm_packet *batadv_ogm_packet;
 unsigned char *ogm_buff;
 u32 random_seqno;

 mutex_lock(&hard_iface->bat_iv.ogm_buff_mutex);


 get_random_bytes(&random_seqno, sizeof(random_seqno));
 atomic_set(&hard_iface->bat_iv.ogm_seqno, random_seqno);

 hard_iface->bat_iv.ogm_buff_len = BATADV_OGM_HLEN;
 ogm_buff = kmalloc(hard_iface->bat_iv.ogm_buff_len, GFP_ATOMIC);
 if (!ogm_buff) {
  mutex_unlock(&hard_iface->bat_iv.ogm_buff_mutex);
  return -ENOMEM;
 }

 hard_iface->bat_iv.ogm_buff = ogm_buff;

 batadv_ogm_packet = (struct batadv_ogm_packet *)ogm_buff;
 batadv_ogm_packet->packet_type = BATADV_IV_OGM;
 batadv_ogm_packet->version = BATADV_COMPAT_VERSION;
 batadv_ogm_packet->ttl = 2;
 batadv_ogm_packet->flags = BATADV_NO_FLAGS;
 batadv_ogm_packet->reserved = 0;
 batadv_ogm_packet->tq = BATADV_TQ_MAX_VALUE;

 mutex_unlock(&hard_iface->bat_iv.ogm_buff_mutex);

 return 0;
}
