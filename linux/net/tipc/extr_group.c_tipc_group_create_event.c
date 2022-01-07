
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tipc_msg {int dummy; } ;
struct tipc_member {int instance; int port; int node; } ;
struct tipc_group {int type; int portid; int net; } ;
struct TYPE_6__ {int upper; int lower; int type; } ;
struct TYPE_7__ {TYPE_2__ seq; } ;
struct TYPE_5__ {int node; int ref; } ;
struct tipc_event {TYPE_3__ s; TYPE_1__ port; int found_upper; int found_lower; int event; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int evt ;
struct TYPE_8__ {int orig_member; } ;


 int GROUP_H_SIZE ;
 int TIPC_CRITICAL_IMPORTANCE ;
 int TIPC_GRP_MEMBER_EVT ;
 TYPE_4__* TIPC_SKB_CB (struct sk_buff*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int memcpy (int ,struct tipc_event*,int) ;
 int memset (struct tipc_event*,int ,int) ;
 int msg_data (struct tipc_msg*) ;
 int msg_set_dest_droppable (struct tipc_msg*,int) ;
 int msg_set_grp_bc_seqno (struct tipc_msg*,int ) ;
 int msg_set_grp_evt (struct tipc_msg*,int ) ;
 int msg_set_nametype (struct tipc_msg*,int ) ;
 struct sk_buff* tipc_msg_create (int ,int ,int ,int,int ,int ,int ,int ,int ) ;
 int tipc_own_addr (int ) ;

__attribute__((used)) static void tipc_group_create_event(struct tipc_group *grp,
        struct tipc_member *m,
        u32 event, u16 seqno,
        struct sk_buff_head *inputq)
{ u32 dnode = tipc_own_addr(grp->net);
 struct tipc_event evt;
 struct sk_buff *skb;
 struct tipc_msg *hdr;

 memset(&evt, 0, sizeof(evt));
 evt.event = event;
 evt.found_lower = m->instance;
 evt.found_upper = m->instance;
 evt.port.ref = m->port;
 evt.port.node = m->node;
 evt.s.seq.type = grp->type;
 evt.s.seq.lower = m->instance;
 evt.s.seq.upper = m->instance;

 skb = tipc_msg_create(TIPC_CRITICAL_IMPORTANCE, TIPC_GRP_MEMBER_EVT,
         GROUP_H_SIZE, sizeof(evt), dnode, m->node,
         grp->portid, m->port, 0);
 if (!skb)
  return;

 hdr = buf_msg(skb);
 msg_set_nametype(hdr, grp->type);
 msg_set_grp_evt(hdr, event);
 msg_set_dest_droppable(hdr, 1);
 msg_set_grp_bc_seqno(hdr, seqno);
 memcpy(msg_data(hdr), &evt, sizeof(evt));
 TIPC_SKB_CB(skb)->orig_member = m->instance;
 __skb_queue_tail(inputq, skb);
}
