
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {int num_sacks; } ;
struct tcp_sock {scalar_t__ compressed_ack; TYPE_1__ rx_opt; struct tcp_sack_block* selective_acks; } ;
struct tcp_sack_block {void* end_seq; void* start_seq; } ;
struct sock {int dummy; } ;


 scalar_t__ TCP_FASTRETRANS_THRESH ;
 int TCP_NUM_SACKS ;
 int swap (struct tcp_sack_block,struct tcp_sack_block) ;
 scalar_t__ tcp_sack_extend (struct tcp_sack_block*,void*,void*) ;
 int tcp_sack_maybe_coalesce (struct tcp_sock*) ;
 int tcp_send_ack (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_sack_new_ofo_skb(struct sock *sk, u32 seq, u32 end_seq)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct tcp_sack_block *sp = &tp->selective_acks[0];
 int cur_sacks = tp->rx_opt.num_sacks;
 int this_sack;

 if (!cur_sacks)
  goto new_sack;

 for (this_sack = 0; this_sack < cur_sacks; this_sack++, sp++) {
  if (tcp_sack_extend(sp, seq, end_seq)) {

   for (; this_sack > 0; this_sack--, sp--)
    swap(*sp, *(sp - 1));
   if (cur_sacks > 1)
    tcp_sack_maybe_coalesce(tp);
   return;
  }
 }







 if (this_sack >= TCP_NUM_SACKS) {
  if (tp->compressed_ack > TCP_FASTRETRANS_THRESH)
   tcp_send_ack(sk);
  this_sack--;
  tp->rx_opt.num_sacks--;
  sp--;
 }
 for (; this_sack > 0; this_sack--, sp--)
  *sp = *(sp - 1);

new_sack:

 sp->start_seq = seq;
 sp->end_seq = end_seq;
 tp->rx_opt.num_sacks++;
}
