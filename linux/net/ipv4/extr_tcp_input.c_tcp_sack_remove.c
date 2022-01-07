
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_sacks; } ;
struct tcp_sock {TYPE_1__ rx_opt; struct tcp_sack_block* selective_acks; int rcv_nxt; int out_of_order_queue; } ;
struct tcp_sack_block {int end_seq; int start_seq; } ;


 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int WARN_ON (int ) ;
 int before (int ,int ) ;

__attribute__((used)) static void tcp_sack_remove(struct tcp_sock *tp)
{
 struct tcp_sack_block *sp = &tp->selective_acks[0];
 int num_sacks = tp->rx_opt.num_sacks;
 int this_sack;


 if (RB_EMPTY_ROOT(&tp->out_of_order_queue)) {
  tp->rx_opt.num_sacks = 0;
  return;
 }

 for (this_sack = 0; this_sack < num_sacks;) {

  if (!before(tp->rcv_nxt, sp->start_seq)) {
   int i;


   WARN_ON(before(tp->rcv_nxt, sp->end_seq));


   for (i = this_sack+1; i < num_sacks; i++)
    tp->selective_acks[i-1] = tp->selective_acks[i];
   num_sacks--;
   continue;
  }
  this_sack++;
  sp++;
 }
 tp->rx_opt.num_sacks = num_sacks;
}
