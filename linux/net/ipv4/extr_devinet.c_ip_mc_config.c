
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_4__ {int s_addr; } ;
struct ip_mreqn {int imr_ifindex; TYPE_1__ imr_multiaddr; } ;
struct in_ifaddr {TYPE_3__* ifa_dev; int ifa_address; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct TYPE_5__ {int ifindex; } ;


 int ASSERT_RTNL () ;
 int ip_mc_join_group (struct sock*,struct ip_mreqn*) ;
 int ip_mc_leave_group (struct sock*,struct ip_mreqn*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int ip_mc_config(struct sock *sk, bool join, const struct in_ifaddr *ifa)
{
 struct ip_mreqn mreq = {
  .imr_multiaddr.s_addr = ifa->ifa_address,
  .imr_ifindex = ifa->ifa_dev->dev->ifindex,
 };
 int ret;

 ASSERT_RTNL();

 lock_sock(sk);
 if (join)
  ret = ip_mc_join_group(sk, &mreq);
 else
  ret = ip_mc_leave_group(sk, &mreq);
 release_sock(sk);

 return ret;
}
