
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_error_report ) (struct sock*) ;int sk_err; } ;
struct TYPE_2__ {scalar_t__ type; struct net_device* dev; } ;
struct packet_sock {int ifindex; int bind_lock; TYPE_1__ prot_hook; scalar_t__ num; scalar_t__ running; scalar_t__ fanout; } ;
struct net_device {int ifindex; int flags; } ;
typedef scalar_t__ __be16 ;


 int BUG_ON (scalar_t__) ;
 int EINVAL ;
 int ENETDOWN ;
 int ENODEV ;
 int IFF_UP ;
 int SOCK_DEAD ;
 int __unregister_prot_hook (struct sock*,int) ;
 struct net_device* dev_get_by_index_rcu (int ,int) ;
 struct net_device* dev_get_by_name_rcu (int ,char const*) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int lock_sock (struct sock*) ;
 int packet_cached_dev_assign (struct packet_sock*,struct net_device*) ;
 int packet_cached_dev_reset (struct packet_sock*) ;
 struct packet_sock* pkt_sk (struct sock*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int register_prot_hook (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_net (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int packet_do_bind(struct sock *sk, const char *name, int ifindex,
     __be16 proto)
{
 struct packet_sock *po = pkt_sk(sk);
 struct net_device *dev_curr;
 __be16 proto_curr;
 bool need_rehook;
 struct net_device *dev = ((void*)0);
 int ret = 0;
 bool unlisted = 0;

 lock_sock(sk);
 spin_lock(&po->bind_lock);
 rcu_read_lock();

 if (po->fanout) {
  ret = -EINVAL;
  goto out_unlock;
 }

 if (name) {
  dev = dev_get_by_name_rcu(sock_net(sk), name);
  if (!dev) {
   ret = -ENODEV;
   goto out_unlock;
  }
 } else if (ifindex) {
  dev = dev_get_by_index_rcu(sock_net(sk), ifindex);
  if (!dev) {
   ret = -ENODEV;
   goto out_unlock;
  }
 }

 if (dev)
  dev_hold(dev);

 proto_curr = po->prot_hook.type;
 dev_curr = po->prot_hook.dev;

 need_rehook = proto_curr != proto || dev_curr != dev;

 if (need_rehook) {
  if (po->running) {
   rcu_read_unlock();



   po->num = 0;
   __unregister_prot_hook(sk, 1);
   rcu_read_lock();
   dev_curr = po->prot_hook.dev;
   if (dev)
    unlisted = !dev_get_by_index_rcu(sock_net(sk),
         dev->ifindex);
  }

  BUG_ON(po->running);
  po->num = proto;
  po->prot_hook.type = proto;

  if (unlikely(unlisted)) {
   dev_put(dev);
   po->prot_hook.dev = ((void*)0);
   po->ifindex = -1;
   packet_cached_dev_reset(po);
  } else {
   po->prot_hook.dev = dev;
   po->ifindex = dev ? dev->ifindex : 0;
   packet_cached_dev_assign(po, dev);
  }
 }
 if (dev_curr)
  dev_put(dev_curr);

 if (proto == 0 || !need_rehook)
  goto out_unlock;

 if (!unlisted && (!dev || (dev->flags & IFF_UP))) {
  register_prot_hook(sk);
 } else {
  sk->sk_err = ENETDOWN;
  if (!sock_flag(sk, SOCK_DEAD))
   sk->sk_error_report(sk);
 }

out_unlock:
 rcu_read_unlock();
 spin_unlock(&po->bind_lock);
 release_sock(sk);
 return ret;
}
