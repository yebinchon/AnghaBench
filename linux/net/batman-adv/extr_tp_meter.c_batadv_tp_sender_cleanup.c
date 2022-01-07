
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_tp_vars {int timer; TYPE_1__* bat_priv; int list; int finish_work; } ;
struct batadv_priv {int dummy; } ;
struct TYPE_2__ {int tp_num; int tp_list_lock; } ;


 int atomic_dec (int *) ;
 int batadv_tp_vars_put (struct batadv_tp_vars*) ;
 int cancel_delayed_work (int *) ;
 int del_timer (int *) ;
 int del_timer_sync (int *) ;
 int hlist_del_rcu (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void batadv_tp_sender_cleanup(struct batadv_priv *bat_priv,
         struct batadv_tp_vars *tp_vars)
{
 cancel_delayed_work(&tp_vars->finish_work);

 spin_lock_bh(&tp_vars->bat_priv->tp_list_lock);
 hlist_del_rcu(&tp_vars->list);
 spin_unlock_bh(&tp_vars->bat_priv->tp_list_lock);


 batadv_tp_vars_put(tp_vars);

 atomic_dec(&tp_vars->bat_priv->tp_num);


 del_timer_sync(&tp_vars->timer);





 del_timer(&tp_vars->timer);
 batadv_tp_vars_put(tp_vars);
}
