
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnep_session {int flags; } ;
typedef int pkt ;



 int BNEP_CONN_NOT_ALLOWED ;
 int BNEP_CONTROL ;






 int BNEP_SETUP_RESPONSE ;
 int BNEP_SETUP_RSP_SENT ;
 int BNEP_SUCCESS ;
 int bnep_ctrl_set_mcfilter (struct bnep_session*,void*,int) ;
 int bnep_ctrl_set_netfilter (struct bnep_session*,void*,int) ;
 int bnep_send (struct bnep_session*,int*,int) ;
 int bnep_send_rsp (struct bnep_session*,int const,int ) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int bnep_rx_control(struct bnep_session *s, void *data, int len)
{
 u8 cmd = *(u8 *)data;
 int err = 0;

 data++;
 len--;

 switch (cmd) {
 case 134:
 case 128:
 case 131:
 case 133:

  break;

 case 130:
  err = bnep_ctrl_set_netfilter(s, data, len);
  break;

 case 132:
  err = bnep_ctrl_set_mcfilter(s, data, len);
  break;

 case 129:

  if (test_bit(BNEP_SETUP_RESPONSE, &s->flags) &&
      !test_and_set_bit(BNEP_SETUP_RSP_SENT, &s->flags))
   err = bnep_send_rsp(s, 128,
         BNEP_SUCCESS);
  else
   err = bnep_send_rsp(s, 128,
         BNEP_CONN_NOT_ALLOWED);
  break;

 default: {
   u8 pkt[3];
   pkt[0] = BNEP_CONTROL;
   pkt[1] = 134;
   pkt[2] = cmd;
   err = bnep_send(s, pkt, sizeof(pkt));
  }
  break;
 }

 return err;
}
