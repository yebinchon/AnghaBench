
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_tp_vars {int timer; int refcount; int list; int unacked_list; int unacked_lock; struct batadv_priv* bat_priv; int last_recv; int session; int role; int other_end; } ;
struct batadv_priv {int tp_list_lock; int tp_list; int tp_num; } ;
struct batadv_icmp_tp_packet {int session; int orig; } ;


 int BATADV_DBG_TP_METER ;
 int BATADV_TP_FIRST_SEQ ;
 int BATADV_TP_MAX_NUM ;
 int BATADV_TP_RECEIVER ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_add_unless (int *,int,int ) ;
 int batadv_dbg (int ,struct batadv_priv*,char*) ;
 struct batadv_tp_vars* batadv_tp_list_find_session (struct batadv_priv*,int ,int ) ;
 int batadv_tp_receiver_shutdown ;
 int batadv_tp_reset_receiver_timer (struct batadv_tp_vars*) ;
 int ether_addr_copy (int ,int ) ;
 int hlist_add_head_rcu (int *,int *) ;
 struct batadv_tp_vars* kmalloc (int,int ) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 int memcpy (int ,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct batadv_tp_vars *
batadv_tp_init_recv(struct batadv_priv *bat_priv,
      const struct batadv_icmp_tp_packet *icmp)
{
 struct batadv_tp_vars *tp_vars;

 spin_lock_bh(&bat_priv->tp_list_lock);
 tp_vars = batadv_tp_list_find_session(bat_priv, icmp->orig,
           icmp->session);
 if (tp_vars)
  goto out_unlock;

 if (!atomic_add_unless(&bat_priv->tp_num, 1, BATADV_TP_MAX_NUM)) {
  batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
      "Meter: too many ongoing sessions, aborting (RECV)\n");
  goto out_unlock;
 }

 tp_vars = kmalloc(sizeof(*tp_vars), GFP_ATOMIC);
 if (!tp_vars)
  goto out_unlock;

 ether_addr_copy(tp_vars->other_end, icmp->orig);
 tp_vars->role = BATADV_TP_RECEIVER;
 memcpy(tp_vars->session, icmp->session, sizeof(tp_vars->session));
 tp_vars->last_recv = BATADV_TP_FIRST_SEQ;
 tp_vars->bat_priv = bat_priv;
 kref_init(&tp_vars->refcount);

 spin_lock_init(&tp_vars->unacked_lock);
 INIT_LIST_HEAD(&tp_vars->unacked_list);

 kref_get(&tp_vars->refcount);
 hlist_add_head_rcu(&tp_vars->list, &bat_priv->tp_list);

 kref_get(&tp_vars->refcount);
 timer_setup(&tp_vars->timer, batadv_tp_receiver_shutdown, 0);

 batadv_tp_reset_receiver_timer(tp_vars);

out_unlock:
 spin_unlock_bh(&bat_priv->tp_list_lock);

 return tp_vars;
}
