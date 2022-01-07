
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct l2tp_tunnel {int peer_tunnel_id; } ;
struct l2tp_session {int peer_session_id; int ns; int name; scalar_t__ send_seq; struct l2tp_tunnel* tunnel; } ;
typedef int __be16 ;


 int L2TP_HDRFLAG_S ;
 int L2TP_HDR_VER_2 ;
 int L2TP_MSG_SEQ ;
 void* htons (int) ;
 int l2tp_dbg (struct l2tp_session*,int ,char*,int ,int) ;

__attribute__((used)) static int l2tp_build_l2tpv2_header(struct l2tp_session *session, void *buf)
{
 struct l2tp_tunnel *tunnel = session->tunnel;
 __be16 *bufp = buf;
 __be16 *optr = buf;
 u16 flags = L2TP_HDR_VER_2;
 u32 tunnel_id = tunnel->peer_tunnel_id;
 u32 session_id = session->peer_session_id;

 if (session->send_seq)
  flags |= L2TP_HDRFLAG_S;


 *bufp++ = htons(flags);
 *bufp++ = htons(tunnel_id);
 *bufp++ = htons(session_id);
 if (session->send_seq) {
  *bufp++ = htons(session->ns);
  *bufp++ = 0;
  session->ns++;
  session->ns &= 0xffff;
  l2tp_dbg(session, L2TP_MSG_SEQ, "%s: updated ns to %u\n",
    session->name, session->ns);
 }

 return bufp - optr;
}
