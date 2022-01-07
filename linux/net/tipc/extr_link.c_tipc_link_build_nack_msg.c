
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int deferred_recv; } ;
struct tipc_link {int net; int deferdq; TYPE_1__ stats; } ;
struct sk_buff_head {int dummy; } ;


 int STATE_MSG ;
 int TIPC_LINK_SND_STATE ;
 scalar_t__ link_is_bc_rcvlink (struct tipc_link*) ;
 int skb_queue_len (int *) ;
 int tipc_link_build_proto_msg (struct tipc_link*,int ,int ,int ,int ,int ,int ,struct sk_buff_head*) ;
 int tipc_own_addr (int ) ;

__attribute__((used)) static int tipc_link_build_nack_msg(struct tipc_link *l,
        struct sk_buff_head *xmitq)
{
 u32 def_cnt = ++l->stats.deferred_recv;
 u32 defq_len = skb_queue_len(&l->deferdq);
 int match1, match2;

 if (link_is_bc_rcvlink(l)) {
  match1 = def_cnt & 0xf;
  match2 = tipc_own_addr(l->net) & 0xf;
  if (match1 == match2)
   return TIPC_LINK_SND_STATE;
  return 0;
 }

 if (defq_len >= 3 && !((defq_len - 3) % 16))
  tipc_link_build_proto_msg(l, STATE_MSG, 0, 0, 0, 0, 0, xmitq);
 return 0;
}
