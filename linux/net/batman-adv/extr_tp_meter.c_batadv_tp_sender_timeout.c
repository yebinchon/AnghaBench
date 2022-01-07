
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct batadv_tp_vars {int rto; int ss_threshold; int cwnd; int more_bytes; int last_acked; scalar_t__ last_sent; int cwnd_lock; int other_end; int sending; struct batadv_priv* bat_priv; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_DBG_TP_METER ;
 int BATADV_TP_MAX_RTO ;
 int BATADV_TP_PLEN ;
 int BATADV_TP_REASON_DST_UNREACHABLE ;
 scalar_t__ atomic_read (int *) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int ,int,int,scalar_t__) ;
 int batadv_tp_reset_sender_timer (struct batadv_tp_vars*) ;
 int batadv_tp_sender_shutdown (struct batadv_tp_vars*,int ) ;
 struct batadv_tp_vars* from_timer (int ,struct timer_list*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timer ;
 struct batadv_tp_vars* tp_vars ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static void batadv_tp_sender_timeout(struct timer_list *t)
{
 struct batadv_tp_vars *tp_vars = from_timer(tp_vars, t, timer);
 struct batadv_priv *bat_priv = tp_vars->bat_priv;

 if (atomic_read(&tp_vars->sending) == 0)
  return;


 if (unlikely(tp_vars->rto >= BATADV_TP_MAX_RTO)) {
  batadv_tp_sender_shutdown(tp_vars,
       BATADV_TP_REASON_DST_UNREACHABLE);
  return;
 }




 tp_vars->rto <<= 1;

 spin_lock_bh(&tp_vars->cwnd_lock);

 tp_vars->ss_threshold = tp_vars->cwnd >> 1;
 if (tp_vars->ss_threshold < BATADV_TP_PLEN * 2)
  tp_vars->ss_threshold = BATADV_TP_PLEN * 2;

 batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
     "Meter: RTO fired during test towards %pM! cwnd=%u new ss_thr=%u, resetting last_sent to %u\n",
     tp_vars->other_end, tp_vars->cwnd, tp_vars->ss_threshold,
     atomic_read(&tp_vars->last_acked));

 tp_vars->cwnd = BATADV_TP_PLEN * 3;

 spin_unlock_bh(&tp_vars->cwnd_lock);


 tp_vars->last_sent = atomic_read(&tp_vars->last_acked);
 wake_up(&tp_vars->more_bytes);

 batadv_tp_reset_sender_timer(tp_vars);
}
