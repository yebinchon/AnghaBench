
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sk_buff {scalar_t__ data; } ;
struct batadv_unicast_packet {int dummy; } ;
struct batadv_tp_vars {size_t recover; int fast_recovery; size_t last_sent; int ss_threshold; int cwnd; int more_bytes; int last_acked; TYPE_1__* net_dev; int dup_acks; int tot_sent; int cwnd_lock; scalar_t__ dec_cwnd; int sending; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {size_t recover; int fast_recovery; size_t last_sent; int ss_threshold; int cwnd; int more_bytes; int last_acked; TYPE_1__* net_dev; int dup_acks; int tot_sent; int cwnd_lock; scalar_t__ dec_cwnd; int sending; } ;
struct batadv_icmp_tp_packet {int uid; int session; scalar_t__ seqno; scalar_t__ timestamp; int orig; } ;
struct batadv_hard_iface {size_t recover; int fast_recovery; size_t last_sent; int ss_threshold; int cwnd; int more_bytes; int last_acked; TYPE_1__* net_dev; int dup_acks; int tot_sent; int cwnd_lock; scalar_t__ dec_cwnd; int sending; } ;
struct TYPE_2__ {unsigned char* dev_addr; } ;


 int BATADV_DBG_TP_METER ;
 size_t BATADV_TP_PLEN ;
 int atomic64_add (size_t,int *) ;
 int atomic_inc (int *) ;
 size_t atomic_read (int *) ;
 int atomic_set (int *,size_t) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int,int,size_t,size_t) ;
 int batadv_hardif_put (struct batadv_tp_vars*) ;
 struct batadv_tp_vars* batadv_orig_hash_find (struct batadv_priv*,int ) ;
 int batadv_orig_node_put (struct batadv_tp_vars*) ;
 struct batadv_tp_vars* batadv_primary_if_get_selected (struct batadv_priv*) ;
 scalar_t__ batadv_seq_before (size_t,size_t) ;
 void* batadv_tp_cwnd (int,size_t,size_t) ;
 struct batadv_tp_vars* batadv_tp_list_find_session (struct batadv_priv*,int ,int ) ;
 int batadv_tp_reset_sender_timer (struct batadv_tp_vars*) ;
 int batadv_tp_send_msg (struct batadv_tp_vars*,unsigned char*,struct batadv_tp_vars*,size_t,size_t,int ,int ,size_t) ;
 int batadv_tp_update_cwnd (struct batadv_tp_vars*,size_t) ;
 int batadv_tp_update_rto (struct batadv_tp_vars*,size_t) ;
 int batadv_tp_vars_put (struct batadv_tp_vars*) ;
 int jiffies ;
 size_t jiffies_to_msecs (int ) ;
 scalar_t__ likely (struct batadv_tp_vars*) ;
 size_t ntohl (scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
          const struct sk_buff *skb)
{
 struct batadv_hard_iface *primary_if = ((void*)0);
 struct batadv_orig_node *orig_node = ((void*)0);
 const struct batadv_icmp_tp_packet *icmp;
 struct batadv_tp_vars *tp_vars;
 size_t packet_len, mss;
 u32 rtt, recv_ack, cwnd;
 unsigned char *dev_addr;

 packet_len = BATADV_TP_PLEN;
 mss = BATADV_TP_PLEN;
 packet_len += sizeof(struct batadv_unicast_packet);

 icmp = (struct batadv_icmp_tp_packet *)skb->data;


 tp_vars = batadv_tp_list_find_session(bat_priv, icmp->orig,
           icmp->session);
 if (unlikely(!tp_vars))
  return;

 if (unlikely(atomic_read(&tp_vars->sending) == 0))
  goto out;


 if (batadv_seq_before(ntohl(icmp->seqno),
         (u32)atomic_read(&tp_vars->last_acked)))
  goto out;

 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (unlikely(!primary_if))
  goto out;

 orig_node = batadv_orig_hash_find(bat_priv, icmp->orig);
 if (unlikely(!orig_node))
  goto out;


 rtt = jiffies_to_msecs(jiffies) - ntohl(icmp->timestamp);
 if (icmp->timestamp && rtt)
  batadv_tp_update_rto(tp_vars, rtt);


 batadv_tp_reset_sender_timer(tp_vars);

 recv_ack = ntohl(icmp->seqno);


 if (atomic_read(&tp_vars->last_acked) == recv_ack) {
  atomic_inc(&tp_vars->dup_acks);
  if (atomic_read(&tp_vars->dup_acks) != 3)
   goto out;

  if (recv_ack >= tp_vars->recover)
   goto out;


  batadv_tp_send_msg(tp_vars, primary_if->net_dev->dev_addr,
       orig_node, recv_ack, packet_len,
       icmp->session, icmp->uid,
       jiffies_to_msecs(jiffies));

  spin_lock_bh(&tp_vars->cwnd_lock);


  tp_vars->fast_recovery = 1;



  tp_vars->recover = tp_vars->last_sent;
  tp_vars->ss_threshold = tp_vars->cwnd >> 1;
  batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
      "Meter: Fast Recovery, (cur cwnd=%u) ss_thr=%u last_sent=%u recv_ack=%u\n",
      tp_vars->cwnd, tp_vars->ss_threshold,
      tp_vars->last_sent, recv_ack);
  tp_vars->cwnd = batadv_tp_cwnd(tp_vars->ss_threshold, 3 * mss,
            mss);
  tp_vars->dec_cwnd = 0;
  tp_vars->last_sent = recv_ack;

  spin_unlock_bh(&tp_vars->cwnd_lock);
 } else {

  atomic64_add(recv_ack - atomic_read(&tp_vars->last_acked),
        &tp_vars->tot_sent);

  atomic_set(&tp_vars->dup_acks, 0);

  if (tp_vars->fast_recovery) {

   if (batadv_seq_before(recv_ack, tp_vars->recover)) {




    dev_addr = primary_if->net_dev->dev_addr;
    batadv_tp_send_msg(tp_vars, dev_addr,
         orig_node, recv_ack,
         packet_len, icmp->session,
         icmp->uid,
         jiffies_to_msecs(jiffies));
    tp_vars->cwnd = batadv_tp_cwnd(tp_vars->cwnd,
              mss, mss);
   } else {
    tp_vars->fast_recovery = 0;




    cwnd = batadv_tp_cwnd(tp_vars->ss_threshold, 0,
            mss);
    tp_vars->cwnd = cwnd;
   }
   goto move_twnd;
  }

  if (recv_ack - atomic_read(&tp_vars->last_acked) >= mss)
   batadv_tp_update_cwnd(tp_vars, mss);
move_twnd:

  atomic_set(&tp_vars->last_acked, recv_ack);
 }

 wake_up(&tp_vars->more_bytes);
out:
 if (likely(primary_if))
  batadv_hardif_put(primary_if);
 if (likely(orig_node))
  batadv_orig_node_put(orig_node);
 if (likely(tp_vars))
  batadv_tp_vars_put(tp_vars);
}
