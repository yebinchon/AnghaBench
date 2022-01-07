
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_msg {int dummy; } ;
struct tipc_link {int state; int transmq; int name; int acked; int tolerance; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int retr_cnt; scalar_t__ retr_stamp; } ;


 int LINK_FAILURE_EVT ;
 int LINK_RESET ;
 int TIPC_DUMP_NONE ;
 int TIPC_LINK_DOWN_EVT ;
 TYPE_1__* TIPC_SKB_CB (struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int less (int ,int ) ;
 scalar_t__ link_is_bc_sndlink (struct tipc_link*) ;
 int link_print (struct tipc_link*,char*) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int msg_destnode (struct tipc_msg*) ;
 int msg_errcode (struct tipc_msg*) ;
 int msg_prevnode (struct tipc_msg*) ;
 int msg_seqno (struct tipc_msg*) ;
 int msg_size (struct tipc_msg*) ;
 int msg_type (struct tipc_msg*) ;
 int msg_user (struct tipc_msg*) ;
 int pr_info (char*,int ,int ,...) ;
 int pr_warn (char*,int ) ;
 struct sk_buff* skb_peek (int *) ;
 int time_after (int ,scalar_t__) ;
 int tipc_link_fsm_evt (struct tipc_link*,int ) ;
 int trace_tipc_link_dump (struct tipc_link*,int ,char*) ;
 int trace_tipc_list_dump (int *,int,char*) ;

__attribute__((used)) static bool link_retransmit_failure(struct tipc_link *l, struct tipc_link *r,
        int *rc)
{
 struct sk_buff *skb = skb_peek(&l->transmq);
 struct tipc_msg *hdr;

 if (!skb)
  return 0;

 if (!TIPC_SKB_CB(skb)->retr_cnt)
  return 0;

 if (!time_after(jiffies, TIPC_SKB_CB(skb)->retr_stamp +
   msecs_to_jiffies(r->tolerance)))
  return 0;

 hdr = buf_msg(skb);
 if (link_is_bc_sndlink(l) && !less(r->acked, msg_seqno(hdr)))
  return 0;

 pr_warn("Retransmission failure on link <%s>\n", l->name);
 link_print(l, "State of link ");
 pr_info("Failed msg: usr %u, typ %u, len %u, err %u\n",
  msg_user(hdr), msg_type(hdr), msg_size(hdr), msg_errcode(hdr));
 pr_info("sqno %u, prev: %x, dest: %x\n",
  msg_seqno(hdr), msg_prevnode(hdr), msg_destnode(hdr));
 pr_info("retr_stamp %d, retr_cnt %d\n",
  jiffies_to_msecs(TIPC_SKB_CB(skb)->retr_stamp),
  TIPC_SKB_CB(skb)->retr_cnt);

 trace_tipc_list_dump(&l->transmq, 1, "retrans failure!");
 trace_tipc_link_dump(l, TIPC_DUMP_NONE, "retrans failure!");
 trace_tipc_link_dump(r, TIPC_DUMP_NONE, "retrans failure!");

 if (link_is_bc_sndlink(l)) {
  r->state = LINK_RESET;
  *rc = TIPC_LINK_DOWN_EVT;
 } else {
  *rc = tipc_link_fsm_evt(l, LINK_FAILURE_EVT);
 }

 return 1;
}
