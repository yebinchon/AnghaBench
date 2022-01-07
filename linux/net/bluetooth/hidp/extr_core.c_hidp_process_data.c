
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__* data; int len; } ;
struct hidp_session {unsigned char waiting_report_type; scalar_t__ waiting_report_number; int report_queue; int flags; struct sk_buff* report_return; int hid; int input; } ;


 int BT_DBG (char*,struct hidp_session*,struct sk_buff*,int ,unsigned char) ;




 int HIDP_HSHK_ERR_INVALID_PARAMETER ;
 int HIDP_TRANS_HANDSHAKE ;
 int HIDP_WAITING_FOR_RETURN ;
 int HID_INPUT_REPORT ;
 int clear_bit (int ,int *) ;
 int hidp_input_report (struct hidp_session*,struct sk_buff*) ;
 int hidp_process_report (struct hidp_session*,int ,scalar_t__*,int ,int ) ;
 int hidp_send_ctrl_message (struct hidp_session*,int,int *,int ) ;
 int hidp_set_timer (struct hidp_session*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int hidp_process_data(struct hidp_session *session, struct sk_buff *skb,
    unsigned char param)
{
 int done_with_skb = 1;
 BT_DBG("session %p skb %p len %d param 0x%02x", session, skb, skb->len, param);

 switch (param) {
 case 130:
  hidp_set_timer(session);

  if (session->input)
   hidp_input_report(session, skb);

  if (session->hid)
   hidp_process_report(session, HID_INPUT_REPORT,
         skb->data, skb->len, 0);
  break;

 case 129:
 case 128:
 case 131:
  break;

 default:
  hidp_send_ctrl_message(session,
   HIDP_TRANS_HANDSHAKE | HIDP_HSHK_ERR_INVALID_PARAMETER, ((void*)0), 0);
 }

 if (test_bit(HIDP_WAITING_FOR_RETURN, &session->flags) &&
    param == session->waiting_report_type) {
  if (session->waiting_report_number < 0 ||
      session->waiting_report_number == skb->data[0]) {

   session->report_return = skb;
   done_with_skb = 0;
   clear_bit(HIDP_WAITING_FOR_RETURN, &session->flags);
   wake_up_interruptible(&session->report_queue);
  }
 }

 return done_with_skb;
}
