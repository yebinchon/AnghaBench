
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x25_sock {int vs; int vr; TYPE_1__* neighbour; } ;
struct sock {int dummy; } ;
struct sk_buff {int* data; } ;
struct TYPE_2__ {scalar_t__ extended; } ;


 int X25_EXT_M_BIT ;
 int X25_STD_M_BIT ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_transmit_link (struct sk_buff*,TYPE_1__*) ;

__attribute__((used)) static void x25_send_iframe(struct sock *sk, struct sk_buff *skb)
{
 struct x25_sock *x25 = x25_sk(sk);

 if (!skb)
  return;

 if (x25->neighbour->extended) {
  skb->data[2] = (x25->vs << 1) & 0xFE;
  skb->data[3] &= X25_EXT_M_BIT;
  skb->data[3] |= (x25->vr << 1) & 0xFE;
 } else {
  skb->data[2] &= X25_STD_M_BIT;
  skb->data[2] |= (x25->vs << 1) & 0x0E;
  skb->data[2] |= (x25->vr << 5) & 0xE0;
 }

 x25_transmit_link(skb, x25->neighbour);
}
