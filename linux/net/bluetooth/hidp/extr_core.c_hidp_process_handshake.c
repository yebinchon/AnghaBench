
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int output_report_success; int report_queue; int flags; } ;


 int BT_DBG (char*,struct hidp_session*,unsigned char) ;
 int const HIDP_CTRL_SOFT_RESET ;







 int const HIDP_TRANS_HANDSHAKE ;
 int const HIDP_TRANS_HID_CONTROL ;
 int HIDP_WAITING_FOR_RETURN ;
 int HIDP_WAITING_FOR_SEND_ACK ;
 int hidp_send_ctrl_message (struct hidp_session*,int const,int *,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void hidp_process_handshake(struct hidp_session *session,
     unsigned char param)
{
 BT_DBG("session %p param 0x%02x", session, param);
 session->output_report_success = 0;

 switch (param) {
 case 128:

  session->output_report_success = 1;
  break;

 case 129:
 case 132:
 case 130:
 case 133:
  if (test_and_clear_bit(HIDP_WAITING_FOR_RETURN, &session->flags))
   wake_up_interruptible(&session->report_queue);


  break;

 case 131:
  break;

 case 134:


  hidp_send_ctrl_message(session,
   HIDP_TRANS_HID_CONTROL | HIDP_CTRL_SOFT_RESET, ((void*)0), 0);
  break;

 default:
  hidp_send_ctrl_message(session,
   HIDP_TRANS_HANDSHAKE | 133, ((void*)0), 0);
  break;
 }


 if (test_and_clear_bit(HIDP_WAITING_FOR_SEND_ACK, &session->flags))
  wake_up_interruptible(&session->report_queue);
}
