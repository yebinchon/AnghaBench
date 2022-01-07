
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct raw_sock {int count; int uniq; scalar_t__ bound; scalar_t__ ifindex; int filter; int notifier; } ;
struct net_device {int dummy; } ;


 struct net_device* dev_get_by_index (int ,scalar_t__) ;
 int dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int free_percpu (int ) ;
 int kfree (int ) ;
 int lock_sock (struct sock*) ;
 int raw_disable_allfilters (int ,struct net_device*,struct sock*) ;
 struct raw_sock* raw_sk (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int unregister_netdevice_notifier (int *) ;

__attribute__((used)) static int raw_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct raw_sock *ro;

 if (!sk)
  return 0;

 ro = raw_sk(sk);

 unregister_netdevice_notifier(&ro->notifier);

 lock_sock(sk);


 if (ro->bound) {
  if (ro->ifindex) {
   struct net_device *dev;

   dev = dev_get_by_index(sock_net(sk), ro->ifindex);
   if (dev) {
    raw_disable_allfilters(dev_net(dev), dev, sk);
    dev_put(dev);
   }
  } else {
   raw_disable_allfilters(sock_net(sk), ((void*)0), sk);
  }
 }

 if (ro->count > 1)
  kfree(ro->filter);

 ro->ifindex = 0;
 ro->bound = 0;
 ro->count = 0;
 free_percpu(ro->uniq);

 sock_orphan(sk);
 sock->sk = ((void*)0);

 release_sock(sk);
 sock_put(sk);

 return 0;
}
