
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_dump_control {int dummy; } ;


 int EINVAL ;
 int THIS_MODULE ;
 int module_put (int ) ;
 int netlink_dump_start (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int try_module_get (int ) ;

__attribute__((used)) static int nft_netlink_dump_start_rcu(struct sock *nlsk, struct sk_buff *skb,
          const struct nlmsghdr *nlh,
          struct netlink_dump_control *c)
{
 int err;

 if (!try_module_get(THIS_MODULE))
  return -EINVAL;

 rcu_read_unlock();
 err = netlink_dump_start(nlsk, skb, nlh, c);
 rcu_read_lock();
 module_put(THIS_MODULE);

 return err;
}
