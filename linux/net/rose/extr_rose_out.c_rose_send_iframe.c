
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int* data; } ;
struct rose_sock {int vr; int vs; int neighbour; } ;


 struct rose_sock* rose_sk (struct sock*) ;
 int rose_start_idletimer (struct sock*) ;
 int rose_transmit_link (struct sk_buff*,int ) ;

__attribute__((used)) static void rose_send_iframe(struct sock *sk, struct sk_buff *skb)
{
 struct rose_sock *rose = rose_sk(sk);

 if (skb == ((void*)0))
  return;

 skb->data[2] |= (rose->vr << 5) & 0xE0;
 skb->data[2] |= (rose->vs << 1) & 0x0E;

 rose_start_idletimer(sk);

 rose_transmit_link(skb, rose->neighbour);
}
