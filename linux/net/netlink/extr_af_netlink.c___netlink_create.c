
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int * ops; } ;
struct sock {int sk_protocol; int sk_destruct; } ;
struct mutex {int dummy; } ;
struct netlink_sock {int wait; struct mutex* cb_mutex; struct mutex cb_def_mutex; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PF_NETLINK ;
 int init_waitqueue_head (int *) ;
 int lockdep_set_class_and_name (struct mutex*,scalar_t__,int ) ;
 int mutex_init (struct mutex*) ;
 int netlink_ops ;
 int netlink_proto ;
 int netlink_sock_destruct ;
 int * nlk_cb_mutex_key_strings ;
 scalar_t__ nlk_cb_mutex_keys ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int sock_init_data (struct socket*,struct sock*) ;

__attribute__((used)) static int __netlink_create(struct net *net, struct socket *sock,
       struct mutex *cb_mutex, int protocol,
       int kern)
{
 struct sock *sk;
 struct netlink_sock *nlk;

 sock->ops = &netlink_ops;

 sk = sk_alloc(net, PF_NETLINK, GFP_KERNEL, &netlink_proto, kern);
 if (!sk)
  return -ENOMEM;

 sock_init_data(sock, sk);

 nlk = nlk_sk(sk);
 if (cb_mutex) {
  nlk->cb_mutex = cb_mutex;
 } else {
  nlk->cb_mutex = &nlk->cb_def_mutex;
  mutex_init(nlk->cb_mutex);
  lockdep_set_class_and_name(nlk->cb_mutex,
        nlk_cb_mutex_keys + protocol,
        nlk_cb_mutex_key_strings[protocol]);
 }
 init_waitqueue_head(&nlk->wait);

 sk->sk_destruct = netlink_sock_destruct;
 sk->sk_protocol = protocol;
 return 0;
}
