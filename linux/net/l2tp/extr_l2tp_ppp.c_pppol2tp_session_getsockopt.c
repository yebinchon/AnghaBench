
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct l2tp_session {int recv_seq; int send_seq; int lns_mode; int debug; int name; int reorder_timeout; } ;


 int ENOPROTOOPT ;
 int L2TP_MSG_CONTROL ;





 scalar_t__ jiffies_to_msecs (int ) ;
 int l2tp_info (struct l2tp_session*,int ,char*,int ,int) ;

__attribute__((used)) static int pppol2tp_session_getsockopt(struct sock *sk,
           struct l2tp_session *session,
           int optname, int *val)
{
 int err = 0;

 switch (optname) {
 case 130:
  *val = session->recv_seq;
  l2tp_info(session, L2TP_MSG_CONTROL,
     "%s: get recv_seq=%d\n", session->name, *val);
  break;

 case 128:
  *val = session->send_seq;
  l2tp_info(session, L2TP_MSG_CONTROL,
     "%s: get send_seq=%d\n", session->name, *val);
  break;

 case 131:
  *val = session->lns_mode;
  l2tp_info(session, L2TP_MSG_CONTROL,
     "%s: get lns_mode=%d\n", session->name, *val);
  break;

 case 132:
  *val = session->debug;
  l2tp_info(session, L2TP_MSG_CONTROL, "%s: get debug=%d\n",
     session->name, *val);
  break;

 case 129:
  *val = (int) jiffies_to_msecs(session->reorder_timeout);
  l2tp_info(session, L2TP_MSG_CONTROL,
     "%s: get reorder_timeout=%d\n", session->name, *val);
  break;

 default:
  err = -ENOPROTOOPT;
 }

 return err;
}
