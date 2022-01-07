
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ type; int state; int * ops; } ;
struct sock {int sk_destruct; int sk_protocol; } ;
struct nfc_protocol {int id; int proto; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int tx_work_scheduled; int tx_work; } ;


 int ENOMEM ;
 int ESOCKTNOSUPPORT ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int PF_NFC ;
 scalar_t__ SOCK_RAW ;
 scalar_t__ SOCK_SEQPACKET ;
 int SS_UNCONNECTED ;
 TYPE_1__* nfc_rawsock (struct sock*) ;
 int nfc_sock_link (int *,struct sock*) ;
 int pr_debug (char*,struct socket*) ;
 int raw_sk_list ;
 int rawsock_destruct ;
 int rawsock_ops ;
 int rawsock_raw_ops ;
 int rawsock_tx_work ;
 struct sock* sk_alloc (struct net*,int ,int ,int ,int) ;
 int sock_init_data (struct socket*,struct sock*) ;

__attribute__((used)) static int rawsock_create(struct net *net, struct socket *sock,
     const struct nfc_protocol *nfc_proto, int kern)
{
 struct sock *sk;

 pr_debug("sock=%p\n", sock);

 if ((sock->type != SOCK_SEQPACKET) && (sock->type != SOCK_RAW))
  return -ESOCKTNOSUPPORT;

 if (sock->type == SOCK_RAW)
  sock->ops = &rawsock_raw_ops;
 else
  sock->ops = &rawsock_ops;

 sk = sk_alloc(net, PF_NFC, GFP_ATOMIC, nfc_proto->proto, kern);
 if (!sk)
  return -ENOMEM;

 sock_init_data(sock, sk);
 sk->sk_protocol = nfc_proto->id;
 sk->sk_destruct = rawsock_destruct;
 sock->state = SS_UNCONNECTED;
 if (sock->type == SOCK_RAW)
  nfc_sock_link(&raw_sk_list, sk);
 else {
  INIT_WORK(&nfc_rawsock(sk)->tx_work, rawsock_tx_work);
  nfc_rawsock(sk)->tx_work_scheduled = 0;
 }

 return 0;
}
