
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int sk_state; int sk_socket; } ;
struct TYPE_5__ {int * hcon; } ;
struct TYPE_4__ {TYPE_2__* conn; } ;






 int BT_DBG (char*,struct sock*,int,int ) ;


 int ECONNRESET ;
 int SCO_DISCONN_TIMEOUT ;
 int SOCK_ZAPPED ;
 int hci_conn_drop (int *) ;
 int sco_chan_del (struct sock*,int ) ;
 int sco_conn_lock (TYPE_2__*) ;
 int sco_conn_unlock (TYPE_2__*) ;
 TYPE_1__* sco_pi (struct sock*) ;
 int sco_sock_cleanup_listen (struct sock*) ;
 int sco_sock_set_timer (struct sock*,int ) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static void __sco_sock_close(struct sock *sk)
{
 BT_DBG("sk %p state %d socket %p", sk, sk->sk_state, sk->sk_socket);

 switch (sk->sk_state) {
 case 128:
  sco_sock_cleanup_listen(sk);
  break;

 case 130:
 case 133:
  if (sco_pi(sk)->conn->hcon) {
   sk->sk_state = 129;
   sco_sock_set_timer(sk, SCO_DISCONN_TIMEOUT);
   sco_conn_lock(sco_pi(sk)->conn);
   hci_conn_drop(sco_pi(sk)->conn->hcon);
   sco_pi(sk)->conn->hcon = ((void*)0);
   sco_conn_unlock(sco_pi(sk)->conn);
  } else
   sco_chan_del(sk, ECONNRESET);
  break;

 case 131:
 case 132:
 case 129:
  sco_chan_del(sk, ECONNRESET);
  break;

 default:
  sock_set_flag(sk, SOCK_ZAPPED);
  break;
 }
}
