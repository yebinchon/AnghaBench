
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_ogm_packet {int tvlv_len; } ;


 int batadv_tvlv_containers_process (struct batadv_priv*,int,struct batadv_orig_node*,int *,int *,void*,int ) ;
 int ntohs (int ) ;

void batadv_tvlv_ogm_receive(struct batadv_priv *bat_priv,
        struct batadv_ogm_packet *batadv_ogm_packet,
        struct batadv_orig_node *orig_node)
{
 void *tvlv_value;
 u16 tvlv_value_len;

 if (!batadv_ogm_packet)
  return;

 tvlv_value_len = ntohs(batadv_ogm_packet->tvlv_len);
 if (!tvlv_value_len)
  return;

 tvlv_value = batadv_ogm_packet + 1;

 batadv_tvlv_containers_process(bat_priv, 1, orig_node, ((void*)0), ((void*)0),
           tvlv_value, tvlv_value_len);
}
