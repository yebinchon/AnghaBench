
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct tcphdr {scalar_t__ ack; scalar_t__ syn; scalar_t__ rst; int window; int ack_seq; int seq; } ;
struct sk_buff {int len; } ;
struct nf_tcp_net {scalar_t__ tcp_be_liberal; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {TYPE_1__* tuplehash; } ;
struct net {int dummy; } ;
struct ip_ct_tcp_state {int flags; int td_end; int td_maxend; int td_maxwin; int td_scale; int td_maxack; } ;
struct ip_ct_tcp {scalar_t__ state; int last_dir; int last_seq; int last_ack; int last_end; scalar_t__ last_win; scalar_t__ retrans; struct ip_ct_tcp_state* seen; } ;
typedef int s32 ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef int __u32 ;
struct TYPE_2__ {struct nf_conntrack_tuple tuple; } ;


 int IP_CT_DIR_ORIGINAL ;
 int IP_CT_DIR_REPLY ;
 int IP_CT_TCP_FLAG_BE_LIBERAL ;
 int IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED ;
 int IP_CT_TCP_FLAG_MAXACK_SET ;
 int IP_CT_TCP_FLAG_SACK_PERM ;
 int IP_CT_TCP_FLAG_WINDOW_SCALE ;
 int MAXACKWINDOW (struct ip_ct_tcp_state*) ;
 unsigned int TCP_ACK_SET ;
 scalar_t__ TCP_CONNTRACK_SYN_RECV ;
 scalar_t__ TCP_CONNTRACK_SYN_SENT ;
 int TCP_FLAG_ACK ;
 int TCP_FLAG_RST ;
 int after (int,int) ;
 scalar_t__ before (int,int) ;
 int nf_ct_dump_tuple (struct nf_conntrack_tuple const*) ;
 int nf_ct_l4proto_log_invalid (struct sk_buff const*,struct nf_conn const*,char*,char*) ;
 struct net* nf_ct_net (struct nf_conn const*) ;
 int nf_ct_seq_offset (struct nf_conn const*,int,int) ;
 struct nf_tcp_net* nf_tcp_pernet (struct net*) ;
 int ntohl (int ) ;
 scalar_t__ ntohs (int ) ;
 int pr_debug (char*,...) ;
 int segment_seq_plus_len (int,int ,unsigned int,struct tcphdr const*) ;
 int tcp_flag_word (struct tcphdr const*) ;
 int tcp_options (struct sk_buff const*,unsigned int,struct tcphdr const*,struct ip_ct_tcp_state*) ;
 int tcp_sack (struct sk_buff const*,unsigned int,struct tcphdr const*,int*) ;

__attribute__((used)) static bool tcp_in_window(const struct nf_conn *ct,
     struct ip_ct_tcp *state,
     enum ip_conntrack_dir dir,
     unsigned int index,
     const struct sk_buff *skb,
     unsigned int dataoff,
     const struct tcphdr *tcph)
{
 struct net *net = nf_ct_net(ct);
 struct nf_tcp_net *tn = nf_tcp_pernet(net);
 struct ip_ct_tcp_state *sender = &state->seen[dir];
 struct ip_ct_tcp_state *receiver = &state->seen[!dir];
 const struct nf_conntrack_tuple *tuple = &ct->tuplehash[dir].tuple;
 __u32 seq, ack, sack, end, win, swin;
 u16 win_raw;
 s32 receiver_offset;
 bool res, in_recv_win;




 seq = ntohl(tcph->seq);
 ack = sack = ntohl(tcph->ack_seq);
 win_raw = ntohs(tcph->window);
 win = win_raw;
 end = segment_seq_plus_len(seq, skb->len, dataoff, tcph);

 if (receiver->flags & IP_CT_TCP_FLAG_SACK_PERM)
  tcp_sack(skb, dataoff, tcph, &sack);


 receiver_offset = nf_ct_seq_offset(ct, !dir, ack - 1);
 ack -= receiver_offset;
 sack -= receiver_offset;

 pr_debug("tcp_in_window: START\n");
 pr_debug("tcp_in_window: ");
 nf_ct_dump_tuple(tuple);
 pr_debug("seq=%u ack=%u+(%d) sack=%u+(%d) win=%u end=%u\n",
   seq, ack, receiver_offset, sack, receiver_offset, win, end);
 pr_debug("tcp_in_window: sender end=%u maxend=%u maxwin=%u scale=%i "
   "receiver end=%u maxend=%u maxwin=%u scale=%i\n",
   sender->td_end, sender->td_maxend, sender->td_maxwin,
   sender->td_scale,
   receiver->td_end, receiver->td_maxend, receiver->td_maxwin,
   receiver->td_scale);

 if (sender->td_maxwin == 0) {



  if (tcph->syn) {




   sender->td_end =
   sender->td_maxend = end;
   sender->td_maxwin = (win == 0 ? 1 : win);

   tcp_options(skb, dataoff, tcph, sender);





   if (!(sender->flags & IP_CT_TCP_FLAG_WINDOW_SCALE
         && receiver->flags & IP_CT_TCP_FLAG_WINDOW_SCALE))
    sender->td_scale =
    receiver->td_scale = 0;
   if (!tcph->ack)

    return 1;
  } else {





   sender->td_end = end;
   swin = win << sender->td_scale;
   sender->td_maxwin = (swin == 0 ? 1 : swin);
   sender->td_maxend = end + sender->td_maxwin;





   if (receiver->td_maxwin == 0)
    receiver->td_end = receiver->td_maxend = sack;
  }
 } else if (((state->state == TCP_CONNTRACK_SYN_SENT
       && dir == IP_CT_DIR_ORIGINAL)
     || (state->state == TCP_CONNTRACK_SYN_RECV
       && dir == IP_CT_DIR_REPLY))
     && after(end, sender->td_end)) {





  sender->td_end =
  sender->td_maxend = end;
  sender->td_maxwin = (win == 0 ? 1 : win);

  tcp_options(skb, dataoff, tcph, sender);
 }

 if (!(tcph->ack)) {



  ack = sack = receiver->td_end;
 } else if (((tcp_flag_word(tcph) & (TCP_FLAG_ACK|TCP_FLAG_RST)) ==
      (TCP_FLAG_ACK|TCP_FLAG_RST))
     && (ack == 0)) {




  ack = sack = receiver->td_end;
 }

 if (tcph->rst && seq == 0 && state->state == TCP_CONNTRACK_SYN_SENT)



  seq = end = sender->td_end;

 pr_debug("tcp_in_window: ");
 nf_ct_dump_tuple(tuple);
 pr_debug("seq=%u ack=%u+(%d) sack=%u+(%d) win=%u end=%u\n",
   seq, ack, receiver_offset, sack, receiver_offset, win, end);
 pr_debug("tcp_in_window: sender end=%u maxend=%u maxwin=%u scale=%i "
   "receiver end=%u maxend=%u maxwin=%u scale=%i\n",
   sender->td_end, sender->td_maxend, sender->td_maxwin,
   sender->td_scale,
   receiver->td_end, receiver->td_maxend, receiver->td_maxwin,
   receiver->td_scale);


 in_recv_win = !receiver->td_maxwin ||
        after(end, sender->td_end - receiver->td_maxwin - 1);

 pr_debug("tcp_in_window: I=%i II=%i III=%i IV=%i\n",
   before(seq, sender->td_maxend + 1),
   (in_recv_win ? 1 : 0),
   before(sack, receiver->td_end + 1),
   after(sack, receiver->td_end - MAXACKWINDOW(sender) - 1));

 if (before(seq, sender->td_maxend + 1) &&
     in_recv_win &&
     before(sack, receiver->td_end + 1) &&
     after(sack, receiver->td_end - MAXACKWINDOW(sender) - 1)) {



  if (!tcph->syn)
   win <<= sender->td_scale;




  swin = win + (sack - ack);
  if (sender->td_maxwin < swin)
   sender->td_maxwin = swin;
  if (after(end, sender->td_end)) {
   sender->td_end = end;
   sender->flags |= IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED;
  }
  if (tcph->ack) {
   if (!(sender->flags & IP_CT_TCP_FLAG_MAXACK_SET)) {
    sender->td_maxack = ack;
    sender->flags |= IP_CT_TCP_FLAG_MAXACK_SET;
   } else if (after(ack, sender->td_maxack))
    sender->td_maxack = ack;
  }




  if (receiver->td_maxwin != 0 && after(end, sender->td_maxend))
   receiver->td_maxwin += end - sender->td_maxend;
  if (after(sack + win, receiver->td_maxend - 1)) {
   receiver->td_maxend = sack + win;
   if (win == 0)
    receiver->td_maxend++;
  }
  if (ack == receiver->td_end)
   receiver->flags &= ~IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED;




  if (index == TCP_ACK_SET) {
   if (state->last_dir == dir
       && state->last_seq == seq
       && state->last_ack == ack
       && state->last_end == end
       && state->last_win == win_raw)
    state->retrans++;
   else {
    state->last_dir = dir;
    state->last_seq = seq;
    state->last_ack = ack;
    state->last_end = end;
    state->last_win = win_raw;
    state->retrans = 0;
   }
  }
  res = 1;
 } else {
  res = 0;
  if (sender->flags & IP_CT_TCP_FLAG_BE_LIBERAL ||
      tn->tcp_be_liberal)
   res = 1;
  if (!res) {
   nf_ct_l4proto_log_invalid(skb, ct,
   "%s",
   before(seq, sender->td_maxend + 1) ?
   in_recv_win ?
   before(sack, receiver->td_end + 1) ?
   after(sack, receiver->td_end - MAXACKWINDOW(sender) - 1) ? "BUG"
   : "ACK is under the lower bound (possible overly delayed ACK)"
   : "ACK is over the upper bound (ACKed data not seen yet)"
   : "SEQ is under the lower bound (already ACKed data retransmitted)"
   : "SEQ is over the upper bound (over the window of the receiver)");
  }
 }

 pr_debug("tcp_in_window: res=%u sender end=%u maxend=%u maxwin=%u "
   "receiver end=%u maxend=%u maxwin=%u\n",
   res, sender->td_end, sender->td_maxend, sender->td_maxwin,
   receiver->td_end, receiver->td_maxend, receiver->td_maxwin);

 return res;
}
