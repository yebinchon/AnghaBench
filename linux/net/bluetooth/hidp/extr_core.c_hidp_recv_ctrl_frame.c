
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; int len; } ;
struct hidp_session {int dummy; } ;


 int BT_DBG (char*,struct hidp_session*,struct sk_buff*,int ) ;
 unsigned char HIDP_HEADER_PARAM_MASK ;
 unsigned char HIDP_HEADER_TRANS_MASK ;
 int const HIDP_HSHK_ERR_UNSUPPORTED_REQUEST ;



 int hidp_process_data (struct hidp_session*,struct sk_buff*,unsigned char) ;
 int hidp_process_handshake (struct hidp_session*,unsigned char) ;
 int hidp_process_hid_control (struct hidp_session*,unsigned char) ;
 int hidp_send_ctrl_message (struct hidp_session*,int const,int *,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void hidp_recv_ctrl_frame(struct hidp_session *session,
     struct sk_buff *skb)
{
 unsigned char hdr, type, param;
 int free_skb = 1;

 BT_DBG("session %p skb %p len %d", session, skb, skb->len);

 hdr = skb->data[0];
 skb_pull(skb, 1);

 type = hdr & HIDP_HEADER_TRANS_MASK;
 param = hdr & HIDP_HEADER_PARAM_MASK;

 switch (type) {
 case 129:
  hidp_process_handshake(session, param);
  break;

 case 128:
  hidp_process_hid_control(session, param);
  break;

 case 130:
  free_skb = hidp_process_data(session, skb, param);
  break;

 default:
  hidp_send_ctrl_message(session,
   129 | HIDP_HSHK_ERR_UNSUPPORTED_REQUEST, ((void*)0), 0);
  break;
 }

 if (free_skb)
  kfree_skb(skb);
}
