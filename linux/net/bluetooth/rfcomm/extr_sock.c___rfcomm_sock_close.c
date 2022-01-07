
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; int sk_socket; } ;
struct rfcomm_dlc {int dummy; } ;
struct TYPE_2__ {struct rfcomm_dlc* dlc; } ;






 int BT_DBG (char*,struct sock*,int,int ) ;

 int SOCK_ZAPPED ;
 int rfcomm_dlc_close (struct rfcomm_dlc*,int ) ;
 TYPE_1__* rfcomm_pi (struct sock*) ;
 int rfcomm_sock_cleanup_listen (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static void __rfcomm_sock_close(struct sock *sk)
{
 struct rfcomm_dlc *d = rfcomm_pi(sk)->dlc;

 BT_DBG("sk %p state %d socket %p", sk, sk->sk_state, sk->sk_socket);

 switch (sk->sk_state) {
 case 128:
  rfcomm_sock_cleanup_listen(sk);
  break;

 case 131:
 case 130:
 case 132:
 case 129:
  rfcomm_dlc_close(d, 0);


 default:
  sock_set_flag(sk, SOCK_ZAPPED);
  break;
 }
}
