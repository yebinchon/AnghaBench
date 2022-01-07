
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct inet6_dev {int lock; int dev; struct ifacaddr6* ac_list; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;
struct ifacaddr6 {int aca_addr; struct ifacaddr6* aca_next; int aca_users; } ;
struct fib6_info {int dummy; } ;


 int ASSERT_RTNL () ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct fib6_info*) ;
 int PTR_ERR (struct fib6_info*) ;
 struct ifacaddr6* aca_alloc (struct fib6_info*,struct in6_addr const*) ;
 int aca_get (struct ifacaddr6*) ;
 int aca_put (struct ifacaddr6*) ;
 struct fib6_info* addrconf_f6i_alloc (struct net*,struct inet6_dev*,struct in6_addr const*,int,int ) ;
 int addrconf_join_solict (int ,int *) ;
 struct net* dev_net (int ) ;
 int fib6_info_release (struct fib6_info*) ;
 int ip6_ins_rt (struct net*,struct fib6_info*) ;
 int ipv6_add_acaddr_hash (struct net*,struct ifacaddr6*) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr const*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int __ipv6_dev_ac_inc(struct inet6_dev *idev, const struct in6_addr *addr)
{
 struct ifacaddr6 *aca;
 struct fib6_info *f6i;
 struct net *net;
 int err;

 ASSERT_RTNL();

 write_lock_bh(&idev->lock);
 if (idev->dead) {
  err = -ENODEV;
  goto out;
 }

 for (aca = idev->ac_list; aca; aca = aca->aca_next) {
  if (ipv6_addr_equal(&aca->aca_addr, addr)) {
   aca->aca_users++;
   err = 0;
   goto out;
  }
 }

 net = dev_net(idev->dev);
 f6i = addrconf_f6i_alloc(net, idev, addr, 1, GFP_ATOMIC);
 if (IS_ERR(f6i)) {
  err = PTR_ERR(f6i);
  goto out;
 }
 aca = aca_alloc(f6i, addr);
 if (!aca) {
  fib6_info_release(f6i);
  err = -ENOMEM;
  goto out;
 }

 aca->aca_next = idev->ac_list;
 idev->ac_list = aca;




 aca_get(aca);
 write_unlock_bh(&idev->lock);

 ipv6_add_acaddr_hash(net, aca);

 ip6_ins_rt(net, f6i);

 addrconf_join_solict(idev->dev, &aca->aca_addr);

 aca_put(aca);
 return 0;
out:
 write_unlock_bh(&idev->lock);
 return err;
}
