
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_omem_alloc; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {int ipv6_mc_list; } ;
struct ipv6_mc_socklist {int addr; int ifindex; int next; } ;
struct inet6_dev {int dummy; } ;


 int ASSERT_RTNL () ;
 struct net_device* __dev_get_by_index (struct net*,int ) ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int __ipv6_dev_mc_dec (struct inet6_dev*,int *) ;
 int atomic_sub (int,int *) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ip6_mc_leave_src (struct sock*,struct ipv6_mc_socklist*,struct inet6_dev*) ;
 int kfree_rcu (struct ipv6_mc_socklist*,int ) ;
 int rcu ;
 struct ipv6_mc_socklist* rtnl_dereference (int ) ;
 struct net* sock_net (struct sock*) ;

void __ipv6_sock_mc_close(struct sock *sk)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct ipv6_mc_socklist *mc_lst;
 struct net *net = sock_net(sk);

 ASSERT_RTNL();

 while ((mc_lst = rtnl_dereference(np->ipv6_mc_list)) != ((void*)0)) {
  struct net_device *dev;

  np->ipv6_mc_list = mc_lst->next;

  dev = __dev_get_by_index(net, mc_lst->ifindex);
  if (dev) {
   struct inet6_dev *idev = __in6_dev_get(dev);

   (void) ip6_mc_leave_src(sk, mc_lst, idev);
   if (idev)
    __ipv6_dev_mc_dec(idev, &mc_lst->addr);
  } else
   (void) ip6_mc_leave_src(sk, mc_lst, ((void*)0));

  atomic_sub(sizeof(*mc_lst), &sk->sk_omem_alloc);
  kfree_rcu(mc_lst, rcu);
 }
}
