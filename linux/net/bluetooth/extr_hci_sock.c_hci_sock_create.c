
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; int state; int * ops; } ;
struct sock {int sk_protocol; int sk_state; } ;
struct net {int dummy; } ;


 int BT_DBG (char*,struct socket*) ;
 int BT_OPEN ;
 int ENOMEM ;
 int ESOCKTNOSUPPORT ;
 int GFP_ATOMIC ;
 int PF_BLUETOOTH ;
 scalar_t__ SOCK_RAW ;
 int SOCK_ZAPPED ;
 int SS_UNCONNECTED ;
 int bt_sock_link (int *,struct sock*) ;
 int hci_sk_list ;
 int hci_sk_proto ;
 int hci_sock_ops ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static int hci_sock_create(struct net *net, struct socket *sock, int protocol,
      int kern)
{
 struct sock *sk;

 BT_DBG("sock %p", sock);

 if (sock->type != SOCK_RAW)
  return -ESOCKTNOSUPPORT;

 sock->ops = &hci_sock_ops;

 sk = sk_alloc(net, PF_BLUETOOTH, GFP_ATOMIC, &hci_sk_proto, kern);
 if (!sk)
  return -ENOMEM;

 sock_init_data(sock, sk);

 sock_reset_flag(sk, SOCK_ZAPPED);

 sk->sk_protocol = protocol;

 sock->state = SS_UNCONNECTED;
 sk->sk_state = BT_OPEN;

 bt_sock_link(&hci_sk_list, sk);
 return 0;
}
