
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int * data; } ;




 int X25_STD_MIN_LEN ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int x25_disconnect (struct sock*,int ,int ,int ) ;
 int x25_start_t23timer (struct sock*) ;
 int x25_write_internal (struct sock*,int const) ;

__attribute__((used)) static int x25_state2_machine(struct sock *sk, struct sk_buff *skb, int frametype)
{
 switch (frametype) {

  case 128:
   if (!pskb_may_pull(skb, X25_STD_MIN_LEN + 2))
    goto out_clear;

   x25_write_internal(sk, 129);
   x25_disconnect(sk, 0, skb->data[3], skb->data[4]);
   break;

  case 129:
   x25_disconnect(sk, 0, 0, 0);
   break;

  default:
   break;
 }

 return 0;

out_clear:
 x25_write_internal(sk, 128);
 x25_start_t23timer(sk);
 return 0;
}
