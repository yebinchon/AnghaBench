
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int* data; } ;
struct nr_sock {int state; } ;


 int NR_STATE_0 ;



 int nr_kick (struct sock*) ;
 struct nr_sock* nr_sk (struct sock*) ;
 int nr_state1_machine (struct sock*,struct sk_buff*,int) ;
 int nr_state2_machine (struct sock*,struct sk_buff*,int) ;
 int nr_state3_machine (struct sock*,struct sk_buff*,int) ;

int nr_process_rx_frame(struct sock *sk, struct sk_buff *skb)
{
 struct nr_sock *nr = nr_sk(sk);
 int queued = 0, frametype;

 if (nr->state == NR_STATE_0)
  return 0;

 frametype = skb->data[19];

 switch (nr->state) {
 case 130:
  queued = nr_state1_machine(sk, skb, frametype);
  break;
 case 129:
  queued = nr_state2_machine(sk, skb, frametype);
  break;
 case 128:
  queued = nr_state3_machine(sk, skb, frametype);
  break;
 }

 nr_kick(sk);

 return queued;
}
