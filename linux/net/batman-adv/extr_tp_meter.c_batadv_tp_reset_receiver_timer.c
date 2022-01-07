
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_tp_vars {int timer; } ;


 int BATADV_TP_RECV_TIMEOUT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void batadv_tp_reset_receiver_timer(struct batadv_tp_vars *tp_vars)
{
 mod_timer(&tp_vars->timer,
    jiffies + msecs_to_jiffies(BATADV_TP_RECV_TIMEOUT));
}
