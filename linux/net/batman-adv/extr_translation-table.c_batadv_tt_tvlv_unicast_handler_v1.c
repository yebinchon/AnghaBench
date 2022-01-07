
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct batadv_tvlv_tt_vlan_data {int dummy; } ;
struct batadv_tvlv_tt_data {int flags; int num_vlan; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_CNT_TT_REQUEST_RX ;
 int BATADV_CNT_TT_RESPONSE_RX ;
 int BATADV_DBG_TT ;
 int BATADV_TT_DATA_TYPE_MASK ;
 int BATADV_TT_FULL_TABLE ;


 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int *,char) ;
 int batadv_handle_tt_response (struct batadv_priv*,struct batadv_tvlv_tt_data*,int *,int) ;
 int batadv_inc_counter (struct batadv_priv*,int ) ;
 int batadv_is_my_mac (struct batadv_priv*,int *) ;
 int batadv_send_tt_response (struct batadv_priv*,struct batadv_tvlv_tt_data*,int *,int *) ;
 int batadv_tt_entries (int) ;
 int ntohs (int ) ;

__attribute__((used)) static int batadv_tt_tvlv_unicast_handler_v1(struct batadv_priv *bat_priv,
          u8 *src, u8 *dst,
          void *tvlv_value,
          u16 tvlv_value_len)
{
 struct batadv_tvlv_tt_data *tt_data;
 u16 tt_vlan_len, tt_num_entries;
 char tt_flag;
 bool ret;

 if (tvlv_value_len < sizeof(*tt_data))
  return NET_RX_SUCCESS;

 tt_data = (struct batadv_tvlv_tt_data *)tvlv_value;
 tvlv_value_len -= sizeof(*tt_data);

 tt_vlan_len = sizeof(struct batadv_tvlv_tt_vlan_data);
 tt_vlan_len *= ntohs(tt_data->num_vlan);

 if (tvlv_value_len < tt_vlan_len)
  return NET_RX_SUCCESS;

 tvlv_value_len -= tt_vlan_len;
 tt_num_entries = batadv_tt_entries(tvlv_value_len);

 switch (tt_data->flags & BATADV_TT_DATA_TYPE_MASK) {
 case 129:
  batadv_inc_counter(bat_priv, BATADV_CNT_TT_REQUEST_RX);




  ret = batadv_send_tt_response(bat_priv, tt_data, src, dst);
  if (!ret) {
   if (tt_data->flags & BATADV_TT_FULL_TABLE)
    tt_flag = 'F';
   else
    tt_flag = '.';

   batadv_dbg(BATADV_DBG_TT, bat_priv,
       "Routing TT_REQUEST to %pM [%c]\n",
       dst, tt_flag);

   return NET_RX_DROP;
  }
  break;
 case 128:
  batadv_inc_counter(bat_priv, BATADV_CNT_TT_RESPONSE_RX);

  if (batadv_is_my_mac(bat_priv, dst)) {
   batadv_handle_tt_response(bat_priv, tt_data,
        src, tt_num_entries);
   return NET_RX_SUCCESS;
  }

  if (tt_data->flags & BATADV_TT_FULL_TABLE)
   tt_flag = 'F';
  else
   tt_flag = '.';

  batadv_dbg(BATADV_DBG_TT, bat_priv,
      "Routing TT_RESPONSE to %pM [%c]\n", dst, tt_flag);


  return NET_RX_DROP;
 }

 return NET_RX_SUCCESS;
}
