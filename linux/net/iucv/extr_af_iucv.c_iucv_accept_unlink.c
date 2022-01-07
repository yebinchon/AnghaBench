
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct iucv_sock {struct sock* parent; int accept_q_lock; int accept_q; } ;


 struct iucv_sock* iucv_sk (struct sock*) ;
 int list_del_init (int *) ;
 int sk_acceptq_removed (struct sock*) ;
 int sock_put (struct sock*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void iucv_accept_unlink(struct sock *sk)
{
 unsigned long flags;
 struct iucv_sock *par = iucv_sk(iucv_sk(sk)->parent);

 spin_lock_irqsave(&par->accept_q_lock, flags);
 list_del_init(&iucv_sk(sk)->accept_q);
 spin_unlock_irqrestore(&par->accept_q_lock, flags);
 sk_acceptq_removed(iucv_sk(sk)->parent);
 iucv_sk(sk)->parent = ((void*)0);
 sock_put(sk);
}
