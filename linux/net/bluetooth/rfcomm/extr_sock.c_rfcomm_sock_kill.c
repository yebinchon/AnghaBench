
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_refcnt; int sk_state; scalar_t__ sk_socket; } ;


 int BT_DBG (char*,struct sock*,int ,int ) ;
 int SOCK_DEAD ;
 int SOCK_ZAPPED ;
 int bt_sock_unlink (int *,struct sock*) ;
 int refcount_read (int *) ;
 int rfcomm_sk_list ;
 int sock_flag (struct sock*,int ) ;
 int sock_put (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static void rfcomm_sock_kill(struct sock *sk)
{
 if (!sock_flag(sk, SOCK_ZAPPED) || sk->sk_socket)
  return;

 BT_DBG("sk %p state %d refcnt %d", sk, sk->sk_state, refcount_read(&sk->sk_refcnt));


 bt_sock_unlink(&rfcomm_sk_list, sk);
 sock_set_flag(sk, SOCK_DEAD);
 sock_put(sk);
}
