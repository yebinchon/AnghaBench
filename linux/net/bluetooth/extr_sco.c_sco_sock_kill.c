
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; scalar_t__ sk_socket; } ;


 int BT_DBG (char*,struct sock*,int ) ;
 int SOCK_DEAD ;
 int SOCK_ZAPPED ;
 int bt_sock_unlink (int *,struct sock*) ;
 int sco_sk_list ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_put (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static void sco_sock_kill(struct sock *sk)
{
 if (!sock_flag(sk, SOCK_ZAPPED) || sk->sk_socket ||
     sock_flag(sk, SOCK_DEAD))
  return;

 BT_DBG("sk %p state %d", sk, sk->sk_state);


 bt_sock_unlink(&sco_sk_list, sk);
 sock_set_flag(sk, SOCK_DEAD);
 sock_put(sk);
}
