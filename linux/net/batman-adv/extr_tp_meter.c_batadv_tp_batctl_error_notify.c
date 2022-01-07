
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct batadv_priv {int dummy; } ;
typedef enum batadv_tp_meter_reason { ____Placeholder_batadv_tp_meter_reason } batadv_tp_meter_reason ;


 int batadv_tp_batctl_notify (int,int const*,struct batadv_priv*,int ,int ,int ) ;

__attribute__((used)) static void batadv_tp_batctl_error_notify(enum batadv_tp_meter_reason reason,
       const u8 *dst,
       struct batadv_priv *bat_priv,
       u32 cookie)
{
 batadv_tp_batctl_notify(reason, dst, bat_priv, 0, 0, cookie);
}
