
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; int data; scalar_t__ cb; } ;
struct cmtp_session {unsigned int mtu; int transmit; } ;
struct cmtp_scb {int id; scalar_t__ data; } ;


 int BT_DBG (char*,struct cmtp_session*) ;
 int BT_ERR (char*) ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (unsigned int,int ) ;
 int cmtp_alloc_block_id (struct cmtp_session*) ;
 int cmtp_free_block_id (struct cmtp_session*,int) ;
 int cmtp_send_frame (struct cmtp_session*,int ,unsigned int) ;
 int kfree_skb (struct sk_buff*) ;
 unsigned int min_t (int ,unsigned int,unsigned int) ;
 int skb_copy_from_linear_data (struct sk_buff*,unsigned char*,unsigned int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_pull (struct sk_buff*,unsigned int) ;
 unsigned char* skb_put (struct sk_buff*,unsigned int) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int ) ;
 int uint ;

__attribute__((used)) static void cmtp_process_transmit(struct cmtp_session *session)
{
 struct sk_buff *skb, *nskb;
 unsigned char *hdr;
 unsigned int size, tail;

 BT_DBG("session %p", session);

 nskb = alloc_skb(session->mtu, GFP_ATOMIC);
 if (!nskb) {
  BT_ERR("Can't allocate memory for new frame");
  return;
 }

 while ((skb = skb_dequeue(&session->transmit))) {
  struct cmtp_scb *scb = (void *) skb->cb;

  tail = session->mtu - nskb->len;
  if (tail < 5) {
   cmtp_send_frame(session, nskb->data, nskb->len);
   skb_trim(nskb, 0);
   tail = session->mtu;
  }

  size = min_t(uint, ((tail < 258) ? (tail - 2) : (tail - 3)), skb->len);

  if (scb->id < 0) {
   scb->id = cmtp_alloc_block_id(session);
   if (scb->id < 0) {
    skb_queue_head(&session->transmit, skb);
    break;
   }
  }

  if (size < 256) {
   hdr = skb_put(nskb, 2);
   hdr[0] = 0x40
    | ((scb->id << 2) & 0x3c)
    | ((skb->len == size) ? 0x00 : 0x01);
   hdr[1] = size;
  } else {
   hdr = skb_put(nskb, 3);
   hdr[0] = 0x80
    | ((scb->id << 2) & 0x3c)
    | ((skb->len == size) ? 0x00 : 0x01);
   hdr[1] = size & 0xff;
   hdr[2] = size >> 8;
  }

  skb_copy_from_linear_data(skb, skb_put(nskb, size), size);
  skb_pull(skb, size);

  if (skb->len > 0) {
   skb_queue_head(&session->transmit, skb);
  } else {
   cmtp_free_block_id(session, scb->id);
   if (scb->data) {
    cmtp_send_frame(session, nskb->data, nskb->len);
    skb_trim(nskb, 0);
   }
   kfree_skb(skb);
  }
 }

 cmtp_send_frame(session, nskb->data, nskb->len);

 kfree_skb(nskb);
}
