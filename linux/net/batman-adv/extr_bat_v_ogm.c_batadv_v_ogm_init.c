
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned char* ogm_buff; int ogm_buff_mutex; int ogm_wq; int ogm_seqno; int ogm_buff_len; } ;
struct batadv_priv {TYPE_1__ bat_v; } ;
struct batadv_ogm2_packet {int throughput; int flags; int ttl; int version; int packet_type; } ;
typedef int random_seqno ;


 int BATADV_COMPAT_VERSION ;
 int BATADV_NO_FLAGS ;
 int BATADV_OGM2 ;
 int BATADV_OGM2_HLEN ;
 int BATADV_THROUGHPUT_MAX_VALUE ;
 int BATADV_TTL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int atomic_set (int *,int ) ;
 int batadv_v_ogm_send ;
 int get_random_bytes (int *,int) ;
 int htonl (int ) ;
 unsigned char* kzalloc (int ,int ) ;
 int mutex_init (int *) ;

int batadv_v_ogm_init(struct batadv_priv *bat_priv)
{
 struct batadv_ogm2_packet *ogm_packet;
 unsigned char *ogm_buff;
 u32 random_seqno;

 bat_priv->bat_v.ogm_buff_len = BATADV_OGM2_HLEN;
 ogm_buff = kzalloc(bat_priv->bat_v.ogm_buff_len, GFP_ATOMIC);
 if (!ogm_buff)
  return -ENOMEM;

 bat_priv->bat_v.ogm_buff = ogm_buff;
 ogm_packet = (struct batadv_ogm2_packet *)ogm_buff;
 ogm_packet->packet_type = BATADV_OGM2;
 ogm_packet->version = BATADV_COMPAT_VERSION;
 ogm_packet->ttl = BATADV_TTL;
 ogm_packet->flags = BATADV_NO_FLAGS;
 ogm_packet->throughput = htonl(BATADV_THROUGHPUT_MAX_VALUE);


 get_random_bytes(&random_seqno, sizeof(random_seqno));
 atomic_set(&bat_priv->bat_v.ogm_seqno, random_seqno);
 INIT_DELAYED_WORK(&bat_priv->bat_v.ogm_wq, batadv_v_ogm_send);

 mutex_init(&bat_priv->bat_v.ogm_buff_mutex);

 return 0;
}
