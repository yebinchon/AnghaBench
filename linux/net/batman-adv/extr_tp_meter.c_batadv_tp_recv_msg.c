
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct batadv_unicast_packet {int dummy; } ;
struct batadv_tp_vars {scalar_t__ role; scalar_t__ last_recv; int last_recv_time; } ;
struct batadv_priv {int dummy; } ;
struct batadv_icmp_tp_packet {scalar_t__ orig; int uid; int session; int timestamp; int seqno; } ;


 int BATADV_DBG_TP_METER ;
 scalar_t__ BATADV_TP_FIRST_SEQ ;
 scalar_t__ BATADV_TP_RECEIVER ;
 int batadv_dbg (int ,struct batadv_priv*,char*,...) ;
 scalar_t__ batadv_seq_before (scalar_t__,scalar_t__) ;
 int batadv_tp_ack_unordered (struct batadv_tp_vars*) ;
 int batadv_tp_handle_out_of_order (struct batadv_tp_vars*,struct sk_buff const*) ;
 struct batadv_tp_vars* batadv_tp_init_recv (struct batadv_priv*,struct batadv_icmp_tp_packet const*) ;
 struct batadv_tp_vars* batadv_tp_list_find_session (struct batadv_priv*,scalar_t__,int ) ;
 int batadv_tp_send_ack (struct batadv_priv*,scalar_t__,scalar_t__,int ,int ,int ) ;
 int batadv_tp_vars_put (struct batadv_tp_vars*) ;
 int jiffies ;
 scalar_t__ likely (struct batadv_tp_vars*) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void batadv_tp_recv_msg(struct batadv_priv *bat_priv,
          const struct sk_buff *skb)
{
 const struct batadv_icmp_tp_packet *icmp;
 struct batadv_tp_vars *tp_vars;
 size_t packet_size;
 u32 seqno;

 icmp = (struct batadv_icmp_tp_packet *)skb->data;

 seqno = ntohl(icmp->seqno);



 if (seqno == BATADV_TP_FIRST_SEQ) {
  tp_vars = batadv_tp_init_recv(bat_priv, icmp);
  if (!tp_vars) {
   batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
       "Meter: seqno != BATADV_TP_FIRST_SEQ cannot initiate connection\n");
   goto out;
  }
 } else {
  tp_vars = batadv_tp_list_find_session(bat_priv, icmp->orig,
            icmp->session);
  if (!tp_vars) {
   batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
       "Unexpected packet from %pM!\n",
       icmp->orig);
   goto out;
  }
 }

 if (unlikely(tp_vars->role != BATADV_TP_RECEIVER)) {
  batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
      "Meter: dropping packet: not expected (role=%u)\n",
      tp_vars->role);
  goto out;
 }

 tp_vars->last_recv_time = jiffies;




 if (batadv_seq_before(seqno, tp_vars->last_recv))
  goto send_ack;


 if (ntohl(icmp->seqno) != tp_vars->last_recv) {



  if (!batadv_tp_handle_out_of_order(tp_vars, skb))
   goto out;


  goto send_ack;
 }


 packet_size = skb->len - sizeof(struct batadv_unicast_packet);
 tp_vars->last_recv += packet_size;


 batadv_tp_ack_unordered(tp_vars);

send_ack:




 batadv_tp_send_ack(bat_priv, icmp->orig, tp_vars->last_recv,
      icmp->timestamp, icmp->session, icmp->uid);
out:
 if (likely(tp_vars))
  batadv_tp_vars_put(tp_vars);
}
