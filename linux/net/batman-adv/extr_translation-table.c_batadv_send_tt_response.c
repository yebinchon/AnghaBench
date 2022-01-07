
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct batadv_tvlv_tt_data {int dummy; } ;
struct batadv_priv {int dummy; } ;


 scalar_t__ batadv_is_my_mac (struct batadv_priv*,int *) ;
 int batadv_send_my_tt_response (struct batadv_priv*,struct batadv_tvlv_tt_data*,int *) ;
 int batadv_send_other_tt_response (struct batadv_priv*,struct batadv_tvlv_tt_data*,int *,int *) ;

__attribute__((used)) static bool batadv_send_tt_response(struct batadv_priv *bat_priv,
        struct batadv_tvlv_tt_data *tt_data,
        u8 *req_src, u8 *req_dst)
{
 if (batadv_is_my_mac(bat_priv, req_dst))
  return batadv_send_my_tt_response(bat_priv, tt_data, req_src);
 return batadv_send_other_tt_response(bat_priv, tt_data, req_src,
          req_dst);
}
