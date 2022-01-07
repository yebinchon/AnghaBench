
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int diagnostic; int cause; } ;
struct TYPE_5__ {unsigned char* cuddata; int cudlength; } ;
struct TYPE_8__ {int reverse; } ;
struct x25_sock {int lci; int vr; TYPE_3__* neighbour; TYPE_2__ causediag; TYPE_1__ calluserdata; TYPE_4__ facilities; int vc_facil_mask; int dte_facilities; int source_addr; int dest_addr; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {scalar_t__ extended; int global_facil_mask; } ;


 int GFP_ATOMIC ;
 int X25_ADDR_LEN ;




 int X25_EXT_MIN_LEN ;
 unsigned char X25_GFI_EXTSEQ ;
 unsigned char X25_GFI_STDSEQ ;

 int X25_MAX_CUD_LEN ;
 int X25_MAX_FAC_LEN ;
 int X25_MAX_L2_LEN ;





 struct sk_buff* alloc_skb (int,int ) ;
 int pr_err (char*,int) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,unsigned char*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int x25_addr_aton (unsigned char*,int *,int *) ;
 int x25_create_facilities (unsigned char*,TYPE_4__*,int *,int ) ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_transmit_link (struct sk_buff*,TYPE_3__*) ;

void x25_write_internal(struct sock *sk, int frametype)
{
 struct x25_sock *x25 = x25_sk(sk);
 struct sk_buff *skb;
 unsigned char *dptr;
 unsigned char facilities[X25_MAX_FAC_LEN];
 unsigned char addresses[1 + X25_ADDR_LEN];
 unsigned char lci1, lci2;



 int len = X25_MAX_L2_LEN + X25_EXT_MIN_LEN;




 switch (frametype) {
 case 136:
  len += 1 + X25_ADDR_LEN + X25_MAX_FAC_LEN + X25_MAX_CUD_LEN;
  break;
 case 137:
  if (x25->facilities.reverse & 0x80) {
   len += 1 + X25_MAX_FAC_LEN + X25_MAX_CUD_LEN;
  } else {
   len += 1 + X25_MAX_FAC_LEN;
  }
  break;
 case 134:
 case 130:
  len += 2;
  break;
 case 128:
 case 129:
 case 132:
 case 135:
 case 133:
 case 131:
  break;
 default:
  pr_err("invalid frame type %02X\n", frametype);
  return;
 }

 if ((skb = alloc_skb(len, GFP_ATOMIC)) == ((void*)0))
  return;




 skb_reserve(skb, X25_MAX_L2_LEN);




 dptr = skb_put(skb, 2);

 lci1 = (x25->lci >> 8) & 0x0F;
 lci2 = (x25->lci >> 0) & 0xFF;

 if (x25->neighbour->extended) {
  *dptr++ = lci1 | X25_GFI_EXTSEQ;
  *dptr++ = lci2;
 } else {
  *dptr++ = lci1 | X25_GFI_STDSEQ;
  *dptr++ = lci2;
 }




 switch (frametype) {

  case 136:
   dptr = skb_put(skb, 1);
   *dptr++ = 136;
   len = x25_addr_aton(addresses, &x25->dest_addr,
      &x25->source_addr);
   skb_put_data(skb, addresses, len);
   len = x25_create_facilities(facilities,
     &x25->facilities,
     &x25->dte_facilities,
     x25->neighbour->global_facil_mask);
   skb_put_data(skb, facilities, len);
   skb_put_data(skb, x25->calluserdata.cuddata,
         x25->calluserdata.cudlength);
   x25->calluserdata.cudlength = 0;
   break;

  case 137:
   dptr = skb_put(skb, 2);
   *dptr++ = 137;
   *dptr++ = 0x00;
   len = x25_create_facilities(facilities,
       &x25->facilities,
       &x25->dte_facilities,
       x25->vc_facil_mask);
   skb_put_data(skb, facilities, len);




   if(x25->facilities.reverse & 0x80) {
    skb_put_data(skb,
          x25->calluserdata.cuddata,
          x25->calluserdata.cudlength);
   }
   x25->calluserdata.cudlength = 0;
   break;

  case 134:
   dptr = skb_put(skb, 3);
   *dptr++ = frametype;
   *dptr++ = x25->causediag.cause;
   *dptr++ = x25->causediag.diagnostic;
   break;

  case 130:
   dptr = skb_put(skb, 3);
   *dptr++ = frametype;
   *dptr++ = 0x00;
   *dptr++ = 0x00;
   break;

  case 128:
  case 129:
  case 132:
   if (x25->neighbour->extended) {
    dptr = skb_put(skb, 2);
    *dptr++ = frametype;
    *dptr++ = (x25->vr << 1) & 0xFE;
   } else {
    dptr = skb_put(skb, 1);
    *dptr = frametype;
    *dptr++ |= (x25->vr << 5) & 0xE0;
   }
   break;

  case 135:
  case 133:
  case 131:
   dptr = skb_put(skb, 1);
   *dptr = frametype;
   break;
 }

 x25_transmit_link(skb, x25->neighbour);
}
