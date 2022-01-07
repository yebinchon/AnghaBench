
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_receive_queue; } ;
struct sk_buff {int truesize; } ;
struct atm_vcc {TYPE_2__* dev; int owner; int (* push ) (struct atm_vcc*,int *) ;int flags; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int owner; int (* close ) (struct atm_vcc*) ;} ;


 int ATM_VF_CLOSE ;
 int ATM_VF_READY ;
 int atm_dev_put (TYPE_2__*) ;
 int atm_return (struct atm_vcc*,int ) ;
 struct atm_vcc* atm_sk (struct sock*) ;
 int clear_bit (int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int module_put (int ) ;
 int set_bit (int ,int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int stub1 (struct atm_vcc*) ;
 int stub2 (struct atm_vcc*,int *) ;
 int vcc_remove_socket (struct sock*) ;

__attribute__((used)) static void vcc_destroy_socket(struct sock *sk)
{
 struct atm_vcc *vcc = atm_sk(sk);
 struct sk_buff *skb;

 set_bit(ATM_VF_CLOSE, &vcc->flags);
 clear_bit(ATM_VF_READY, &vcc->flags);
 if (vcc->dev) {
  if (vcc->dev->ops->close)
   vcc->dev->ops->close(vcc);
  if (vcc->push)
   vcc->push(vcc, ((void*)0));
  module_put(vcc->owner);

  while ((skb = skb_dequeue(&sk->sk_receive_queue)) != ((void*)0)) {
   atm_return(vcc, skb->truesize);
   kfree_skb(skb);
  }

  module_put(vcc->dev->ops->owner);
  atm_dev_put(vcc->dev);
 }

 vcc_remove_socket(sk);
}
