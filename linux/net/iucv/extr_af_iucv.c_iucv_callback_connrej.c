
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {scalar_t__ sk_state; int (* sk_state_change ) (struct sock*) ;} ;
struct iucv_path {struct sock* private; } ;


 scalar_t__ IUCV_CLOSED ;
 scalar_t__ IUCV_DISCONN ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int iucv_sever_path (struct sock*,int) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void iucv_callback_connrej(struct iucv_path *path, u8 ipuser[16])
{
 struct sock *sk = path->private;

 if (sk->sk_state == IUCV_CLOSED)
  return;

 bh_lock_sock(sk);
 iucv_sever_path(sk, 1);
 sk->sk_state = IUCV_DISCONN;

 sk->sk_state_change(sk);
 bh_unlock_sock(sk);
}
