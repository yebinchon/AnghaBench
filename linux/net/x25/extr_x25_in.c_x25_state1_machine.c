
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cause; int diagnostic; } ;
struct TYPE_3__ {int cudlength; int cuddata; } ;
struct x25_sock {int condition; int state; TYPE_2__ causediag; TYPE_1__ calluserdata; int vc_facil_mask; int dte_facilities; int facilities; int vl; int vr; int va; int vs; } ;
struct x25_address {int dummy; } ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_state; } ;
struct sk_buff {int* data; int len; } ;


 int ECONNREFUSED ;
 int EISCONN ;
 int SOCK_DEAD ;
 int TCP_ESTABLISHED ;


 int const X25_CLEAR_CONFIRMATION ;

 int X25_MAX_CUD_LEN ;
 int X25_STATE_2 ;
 int X25_STATE_3 ;
 int X25_STD_MIN_LEN ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_copy_bits (struct sk_buff*,int ,int ,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int x25_disconnect (struct sock*,int ,int,int) ;
 int x25_parse_address_block (struct sk_buff*,struct x25_address*,struct x25_address*) ;
 int x25_parse_facilities (struct sk_buff*,int *,int *,int *) ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_start_t23timer (struct sock*) ;
 int x25_stop_timer (struct sock*) ;
 int x25_write_internal (struct sock*,int const) ;

__attribute__((used)) static int x25_state1_machine(struct sock *sk, struct sk_buff *skb, int frametype)
{
 struct x25_address source_addr, dest_addr;
 int len;
 struct x25_sock *x25 = x25_sk(sk);

 switch (frametype) {
 case 130: {

  x25_stop_timer(sk);
  x25->condition = 0x00;
  x25->vs = 0;
  x25->va = 0;
  x25->vr = 0;
  x25->vl = 0;
  x25->state = X25_STATE_3;
  sk->sk_state = TCP_ESTABLISHED;



  if (!pskb_may_pull(skb, X25_STD_MIN_LEN))
   goto out_clear;
  skb_pull(skb, X25_STD_MIN_LEN);

  len = x25_parse_address_block(skb, &source_addr,
           &dest_addr);
  if (len > 0)
   skb_pull(skb, len);
  else if (len < 0)
   goto out_clear;

  len = x25_parse_facilities(skb, &x25->facilities,
        &x25->dte_facilities,
        &x25->vc_facil_mask);
  if (len > 0)
   skb_pull(skb, len);
  else if (len < 0)
   goto out_clear;



  if (skb->len > 0) {
   if (skb->len > X25_MAX_CUD_LEN)
    goto out_clear;

   skb_copy_bits(skb, 0, x25->calluserdata.cuddata,
    skb->len);
   x25->calluserdata.cudlength = skb->len;
  }
  if (!sock_flag(sk, SOCK_DEAD))
   sk->sk_state_change(sk);
  break;
 }
 case 129:

  x25->causediag.cause = 0x01;
  x25->causediag.diagnostic = 0x48;

  x25_write_internal(sk, 128);
  x25_disconnect(sk, EISCONN, 0x01, 0x48);
  break;

 case 128:
  if (!pskb_may_pull(skb, X25_STD_MIN_LEN + 2))
   goto out_clear;

  x25_write_internal(sk, X25_CLEAR_CONFIRMATION);
  x25_disconnect(sk, ECONNREFUSED, skb->data[3], skb->data[4]);
  break;

 default:
  break;
 }

 return 0;

out_clear:
 x25_write_internal(sk, 128);
 x25->state = X25_STATE_2;
 x25_start_t23timer(sk);
 return 0;
}
