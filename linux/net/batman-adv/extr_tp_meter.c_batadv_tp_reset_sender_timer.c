
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_tp_vars {int rto; int timer; int sending; } ;


 scalar_t__ atomic_read (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void batadv_tp_reset_sender_timer(struct batadv_tp_vars *tp_vars)
{



 if (unlikely(atomic_read(&tp_vars->sending) == 0))

  return;

 mod_timer(&tp_vars->timer, jiffies + msecs_to_jiffies(tp_vars->rto));
}
