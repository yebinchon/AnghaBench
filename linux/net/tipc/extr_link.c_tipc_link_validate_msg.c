
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tipc_msg {int dummy; } ;
struct tipc_link {int peer_caps; int rcv_nxt_state; int in_session; int peer_session; } ;



 scalar_t__ LINK_PROTOCOL ;


 int TIPC_LINK_PROTO_SEQNO ;
 int less (int ,int ) ;
 int link_is_up (struct tipc_link*) ;
 int more (int ,int ) ;
 int msg_ack (struct tipc_msg*) ;
 int msg_seqno (struct tipc_msg*) ;
 int msg_session (struct tipc_msg*) ;
 int msg_type (struct tipc_msg*) ;
 scalar_t__ msg_user (struct tipc_msg*) ;

bool tipc_link_validate_msg(struct tipc_link *l, struct tipc_msg *hdr)
{
 u16 curr_session = l->peer_session;
 u16 session = msg_session(hdr);
 int mtyp = msg_type(hdr);

 if (msg_user(hdr) != LINK_PROTOCOL)
  return 1;

 switch (mtyp) {
 case 129:
  if (!l->in_session)
   return 1;

  return more(session, curr_session);
 case 130:
  if (!l->in_session)
   return 1;

  return !less(session, curr_session);
 case 128:

  if (!l->in_session)
   return 0;
  if (session != curr_session)
   return 0;

  if (!link_is_up(l) && msg_ack(hdr))
   return 0;
  if (!(l->peer_caps & TIPC_LINK_PROTO_SEQNO))
   return 1;

  return !less(msg_seqno(hdr), l->rcv_nxt_state);
 default:
  return 0;
 }
}
