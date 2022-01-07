
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct lapb_cb {int mode; int state; int dev; } ;


 unsigned char LAPB_ADDR_A ;
 unsigned char LAPB_ADDR_B ;
 unsigned char LAPB_ADDR_C ;
 unsigned char LAPB_ADDR_D ;
 int LAPB_COMMAND ;
 int LAPB_DCE ;
 int LAPB_MLP ;
 int LAPB_RESPONSE ;
 int kfree_skb (struct sk_buff*) ;
 int lapb_data_transmit (struct lapb_cb*,struct sk_buff*) ;
 int lapb_dbg (int,char*,int ,int ,int ) ;
 unsigned char* skb_push (struct sk_buff*,int) ;

void lapb_transmit_buffer(struct lapb_cb *lapb, struct sk_buff *skb, int type)
{
 unsigned char *ptr;

 ptr = skb_push(skb, 1);

 if (lapb->mode & LAPB_MLP) {
  if (lapb->mode & LAPB_DCE) {
   if (type == LAPB_COMMAND)
    *ptr = LAPB_ADDR_C;
   if (type == LAPB_RESPONSE)
    *ptr = LAPB_ADDR_D;
  } else {
   if (type == LAPB_COMMAND)
    *ptr = LAPB_ADDR_D;
   if (type == LAPB_RESPONSE)
    *ptr = LAPB_ADDR_C;
  }
 } else {
  if (lapb->mode & LAPB_DCE) {
   if (type == LAPB_COMMAND)
    *ptr = LAPB_ADDR_A;
   if (type == LAPB_RESPONSE)
    *ptr = LAPB_ADDR_B;
  } else {
   if (type == LAPB_COMMAND)
    *ptr = LAPB_ADDR_B;
   if (type == LAPB_RESPONSE)
    *ptr = LAPB_ADDR_A;
  }
 }

 lapb_dbg(2, "(%p) S%d TX %3ph\n", lapb->dev, lapb->state, skb->data);

 if (!lapb_data_transmit(lapb, skb))
  kfree_skb(skb);
}
