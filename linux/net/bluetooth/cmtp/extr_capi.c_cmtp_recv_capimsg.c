
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; int data; } ;
struct capi_ctr {int dummy; } ;
struct cmtp_session {int flags; int num; struct capi_ctr ctrl; } ;
struct cmtp_application {int appl; } ;
typedef int __u32 ;
typedef int __u16 ;


 int BIT (int ) ;
 int BT_DBG (char*,struct cmtp_session*,struct sk_buff*,scalar_t__) ;
 int BT_ERR (char*,int ) ;
 int CAPIMSG_APPID (int ) ;
 scalar_t__ CAPIMSG_COMMAND (int ) ;
 int CAPIMSG_CONTROL (int ) ;
 int CAPIMSG_SETAPPID (int ,int ) ;
 int CAPIMSG_SETCONTROL (int ,int) ;
 scalar_t__ CAPI_INTEROPERABILITY ;
 scalar_t__ CAPI_MSG_BASELEN ;
 int CMTP_LOOPBACK ;
 int CMTP_MAPPING ;
 int capi_ctr_handle_message (struct capi_ctr*,int ,struct sk_buff*) ;
 struct cmtp_application* cmtp_application_get (struct cmtp_session*,int ,int ) ;
 int cmtp_recv_interopmsg (struct cmtp_session*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;

void cmtp_recv_capimsg(struct cmtp_session *session, struct sk_buff *skb)
{
 struct capi_ctr *ctrl = &session->ctrl;
 struct cmtp_application *application;
 __u16 appl;
 __u32 contr;

 BT_DBG("session %p skb %p len %d", session, skb, skb->len);

 if (skb->len < CAPI_MSG_BASELEN)
  return;

 if (CAPIMSG_COMMAND(skb->data) == CAPI_INTEROPERABILITY) {
  cmtp_recv_interopmsg(session, skb);
  return;
 }

 if (session->flags & BIT(CMTP_LOOPBACK)) {
  kfree_skb(skb);
  return;
 }

 appl = CAPIMSG_APPID(skb->data);
 contr = CAPIMSG_CONTROL(skb->data);

 application = cmtp_application_get(session, CMTP_MAPPING, appl);
 if (application) {
  appl = application->appl;
  CAPIMSG_SETAPPID(skb->data, appl);
 } else {
  BT_ERR("Can't find application with id %d", appl);
  kfree_skb(skb);
  return;
 }

 if ((contr & 0x7f) == 0x01) {
  contr = (contr & 0xffffff80) | session->num;
  CAPIMSG_SETCONTROL(skb->data, contr);
 }

 capi_ctr_handle_message(ctrl, appl, skb);
}
