
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int * data; } ;
struct TYPE_2__ {scalar_t__ cr; int * control; } ;
struct lapb_cb {int mode; int vs; int vr; int state; int dev; int frmr_type; TYPE_1__ frmr_data; } ;


 int GFP_ATOMIC ;
 int LAPB_EXTENDED ;
 void* LAPB_FRMR ;
 scalar_t__ LAPB_HEADER_LEN ;
 scalar_t__ LAPB_RESPONSE ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int lapb_dbg (int,char*,int ,int ,int *) ;
 int lapb_transmit_buffer (struct lapb_cb*,struct sk_buff*,scalar_t__) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

void lapb_transmit_frmr(struct lapb_cb *lapb)
{
 struct sk_buff *skb;
 unsigned char *dptr;

 if ((skb = alloc_skb(LAPB_HEADER_LEN + 7, GFP_ATOMIC)) == ((void*)0))
  return;

 skb_reserve(skb, LAPB_HEADER_LEN + 1);

 if (lapb->mode & LAPB_EXTENDED) {
  dptr = skb_put(skb, 6);
  *dptr++ = LAPB_FRMR;
  *dptr++ = lapb->frmr_data.control[0];
  *dptr++ = lapb->frmr_data.control[1];
  *dptr++ = (lapb->vs << 1) & 0xFE;
  *dptr = (lapb->vr << 1) & 0xFE;
  if (lapb->frmr_data.cr == LAPB_RESPONSE)
   *dptr |= 0x01;
  dptr++;
  *dptr++ = lapb->frmr_type;

  lapb_dbg(1, "(%p) S%d TX FRMR %5ph\n",
    lapb->dev, lapb->state,
    &skb->data[1]);
 } else {
  dptr = skb_put(skb, 4);
  *dptr++ = LAPB_FRMR;
  *dptr++ = lapb->frmr_data.control[0];
  *dptr = (lapb->vs << 1) & 0x0E;
  *dptr |= (lapb->vr << 5) & 0xE0;
  if (lapb->frmr_data.cr == LAPB_RESPONSE)
   *dptr |= 0x10;
  dptr++;
  *dptr++ = lapb->frmr_type;

  lapb_dbg(1, "(%p) S%d TX FRMR %3ph\n",
    lapb->dev, lapb->state, &skb->data[1]);
 }

 lapb_transmit_buffer(lapb, skb, LAPB_RESPONSE);
}
