
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_bound_dev_if; } ;
struct net_device {scalar_t__ ifindex; } ;
struct ip_mreqn {scalar_t__ imr_ifindex; int imr_multiaddr; } ;
struct in_addr {int dummy; } ;
typedef int mreq ;


 int EINVAL ;
 int ip_mc_join_group (struct sock*,struct ip_mreqn*) ;
 int lock_sock (struct sock*) ;
 int memcpy (int *,struct in_addr*,int) ;
 int memset (struct ip_mreqn*,int ,int) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int
join_mcast_group(struct sock *sk, struct in_addr *addr, struct net_device *dev)
{
 struct ip_mreqn mreq;
 int ret;

 memset(&mreq, 0, sizeof(mreq));
 memcpy(&mreq.imr_multiaddr, addr, sizeof(struct in_addr));

 if (sk->sk_bound_dev_if && dev->ifindex != sk->sk_bound_dev_if)
  return -EINVAL;

 mreq.imr_ifindex = dev->ifindex;

 lock_sock(sk);
 ret = ip_mc_join_group(sk, &mreq);
 release_sock(sk);

 return ret;
}
