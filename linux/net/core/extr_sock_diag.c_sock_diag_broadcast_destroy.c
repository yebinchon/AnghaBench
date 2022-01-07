
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct broadcast_sk {int work; struct sock* sk; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int broadcast_wq ;
 struct broadcast_sk* kmalloc (int,int ) ;
 int queue_work (int ,int *) ;
 void sk_destruct (struct sock*) ;
 int sock_diag_broadcast_destroy_work ;

void sock_diag_broadcast_destroy(struct sock *sk)
{

 struct broadcast_sk *bsk =
  kmalloc(sizeof(struct broadcast_sk), GFP_ATOMIC);
 if (!bsk)
  return sk_destruct(sk);
 bsk->sk = sk;
 INIT_WORK(&bsk->work, sock_diag_broadcast_destroy_work);
 queue_work(broadcast_wq, &bsk->work);
}
