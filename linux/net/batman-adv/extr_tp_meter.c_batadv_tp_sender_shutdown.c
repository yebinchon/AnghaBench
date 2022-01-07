
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_tp_vars {int reason; int sending; } ;
typedef enum batadv_tp_meter_reason { ____Placeholder_batadv_tp_meter_reason } batadv_tp_meter_reason ;


 int atomic_dec_and_test (int *) ;

__attribute__((used)) static void batadv_tp_sender_shutdown(struct batadv_tp_vars *tp_vars,
          enum batadv_tp_meter_reason reason)
{
 if (!atomic_dec_and_test(&tp_vars->sending))
  return;

 tp_vars->reason = reason;
}
