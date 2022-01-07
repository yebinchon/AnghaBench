
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct l2tp_tunnel {scalar_t__ encap; } ;
struct l2tp_session {int peer_session_id; scalar_t__ l2specific_type; int ns; int name; scalar_t__ send_seq; int cookie_len; int * cookie; struct l2tp_tunnel* tunnel; } ;
typedef int __be32 ;
typedef int __be16 ;


 scalar_t__ L2TP_ENCAPTYPE_UDP ;
 int L2TP_HDR_VER_3 ;
 scalar_t__ L2TP_L2SPECTYPE_DEFAULT ;
 int L2TP_MSG_SEQ ;
 int htonl (int) ;
 int htons (int ) ;
 int l2tp_dbg (struct l2tp_session*,int ,char*,int ,int) ;
 int memcpy (char*,int *,int ) ;

__attribute__((used)) static int l2tp_build_l2tpv3_header(struct l2tp_session *session, void *buf)
{
 struct l2tp_tunnel *tunnel = session->tunnel;
 char *bufp = buf;
 char *optr = bufp;




 if (tunnel->encap == L2TP_ENCAPTYPE_UDP) {
  u16 flags = L2TP_HDR_VER_3;
  *((__be16 *) bufp) = htons(flags);
  bufp += 2;
  *((__be16 *) bufp) = 0;
  bufp += 2;
 }

 *((__be32 *) bufp) = htonl(session->peer_session_id);
 bufp += 4;
 if (session->cookie_len) {
  memcpy(bufp, &session->cookie[0], session->cookie_len);
  bufp += session->cookie_len;
 }
 if (session->l2specific_type == L2TP_L2SPECTYPE_DEFAULT) {
  u32 l2h = 0;

  if (session->send_seq) {
   l2h = 0x40000000 | session->ns;
   session->ns++;
   session->ns &= 0xffffff;
   l2tp_dbg(session, L2TP_MSG_SEQ,
     "%s: updated ns to %u\n",
     session->name, session->ns);
  }

  *((__be32 *)bufp) = htonl(l2h);
  bufp += 4;
 }

 return bufp - optr;
}
