
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2tp_session {int hdr_len; int cookie_len; TYPE_1__* tunnel; scalar_t__ send_seq; } ;
struct TYPE_2__ {scalar_t__ encap; } ;


 scalar_t__ L2TP_ENCAPTYPE_UDP ;
 int L2TP_HDR_VER_2 ;
 scalar_t__ l2tp_get_l2specific_len (struct l2tp_session*) ;

void l2tp_session_set_header_len(struct l2tp_session *session, int version)
{
 if (version == L2TP_HDR_VER_2) {
  session->hdr_len = 6;
  if (session->send_seq)
   session->hdr_len += 4;
 } else {
  session->hdr_len = 4 + session->cookie_len;
  session->hdr_len += l2tp_get_l2specific_len(session);
  if (session->tunnel->encap == L2TP_ENCAPTYPE_UDP)
   session->hdr_len += 4;
 }

}
