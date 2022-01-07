
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_4__ {int addr; int name; int pgn; } ;
struct TYPE_5__ {TYPE_1__ j1939; } ;
struct sockaddr_can {scalar_t__ can_ifindex; TYPE_2__ can_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct net_device {scalar_t__ type; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int sa; int src_name; } ;
struct j1939_sock {int state; scalar_t__ ifindex; TYPE_3__ addr; int pgn_rx_filter; struct j1939_priv* priv; } ;
struct j1939_priv {int dummy; } ;


 scalar_t__ ARPHRD_CAN ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct j1939_priv*) ;
 int J1939_SOCK_BOUND ;
 int PTR_ERR (struct j1939_priv*) ;
 struct net_device* dev_get_by_index (struct net*,scalar_t__) ;
 int dev_put (struct net_device*) ;
 int j1939_jsk_add (struct j1939_priv*,struct j1939_sock*) ;
 int j1939_jsk_del (struct j1939_priv*,struct j1939_sock*) ;
 int j1939_local_ecu_get (struct j1939_priv*,int ,int ) ;
 int j1939_local_ecu_put (struct j1939_priv*,int ,int ) ;
 struct j1939_priv* j1939_netdev_start (struct net_device*) ;
 int j1939_netdev_stop (struct j1939_priv*) ;
 scalar_t__ j1939_pgn_is_valid (int ) ;
 struct j1939_sock* j1939_sk (struct sock*) ;
 int j1939_sk_sanity_check (struct sockaddr_can*,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 struct net* sock_net (struct sock*) ;

__attribute__((used)) static int j1939_sk_bind(struct socket *sock, struct sockaddr *uaddr, int len)
{
 struct sockaddr_can *addr = (struct sockaddr_can *)uaddr;
 struct j1939_sock *jsk = j1939_sk(sock->sk);
 struct j1939_priv *priv = jsk->priv;
 struct sock *sk = sock->sk;
 struct net *net = sock_net(sk);
 int ret = 0;

 ret = j1939_sk_sanity_check(addr, len);
 if (ret)
  return ret;

 lock_sock(sock->sk);


 if (jsk->state & J1939_SOCK_BOUND) {



  if (jsk->ifindex != addr->can_ifindex) {
   ret = -EINVAL;
   goto out_release_sock;
  }


  j1939_jsk_del(priv, jsk);
  j1939_local_ecu_put(priv, jsk->addr.src_name, jsk->addr.sa);
 } else {
  struct net_device *ndev;

  ndev = dev_get_by_index(net, addr->can_ifindex);
  if (!ndev) {
   ret = -ENODEV;
   goto out_release_sock;
  }

  if (ndev->type != ARPHRD_CAN) {
   dev_put(ndev);
   ret = -ENODEV;
   goto out_release_sock;
  }

  priv = j1939_netdev_start(ndev);
  dev_put(ndev);
  if (IS_ERR(priv)) {
   ret = PTR_ERR(priv);
   goto out_release_sock;
  }

  jsk->ifindex = addr->can_ifindex;
 }


 if (j1939_pgn_is_valid(addr->can_addr.j1939.pgn))
  jsk->pgn_rx_filter = addr->can_addr.j1939.pgn;
 jsk->addr.src_name = addr->can_addr.j1939.name;
 jsk->addr.sa = addr->can_addr.j1939.addr;


 ret = j1939_local_ecu_get(priv, jsk->addr.src_name, jsk->addr.sa);
 if (ret) {
  j1939_netdev_stop(priv);
  goto out_release_sock;
 }

 j1939_jsk_add(priv, jsk);

 out_release_sock:
 release_sock(sock->sk);

 return ret;
}
