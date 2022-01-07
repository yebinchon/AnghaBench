
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct lapb_cb {int mode; int vr; } ;


 int GFP_ATOMIC ;
 unsigned char LAPB_EPF ;
 int LAPB_EXTENDED ;
 scalar_t__ LAPB_HEADER_LEN ;
 int LAPB_S ;
 unsigned char LAPB_SPF ;
 int LAPB_U ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int lapb_transmit_buffer (struct lapb_cb*,struct sk_buff*,int) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

void lapb_send_control(struct lapb_cb *lapb, int frametype,
         int poll_bit, int type)
{
 struct sk_buff *skb;
 unsigned char *dptr;

 if ((skb = alloc_skb(LAPB_HEADER_LEN + 3, GFP_ATOMIC)) == ((void*)0))
  return;

 skb_reserve(skb, LAPB_HEADER_LEN + 1);

 if (lapb->mode & LAPB_EXTENDED) {
  if ((frametype & LAPB_U) == LAPB_U) {
   dptr = skb_put(skb, 1);
   *dptr = frametype;
   *dptr |= poll_bit ? LAPB_SPF : 0;
  } else {
   dptr = skb_put(skb, 2);
   dptr[0] = frametype;
   dptr[1] = (lapb->vr << 1);
   dptr[1] |= poll_bit ? LAPB_EPF : 0;
  }
 } else {
  dptr = skb_put(skb, 1);
  *dptr = frametype;
  *dptr |= poll_bit ? LAPB_SPF : 0;
  if ((frametype & LAPB_U) == LAPB_S)
   *dptr |= (lapb->vr << 5);
 }

 lapb_transmit_buffer(lapb, skb, type);
}
