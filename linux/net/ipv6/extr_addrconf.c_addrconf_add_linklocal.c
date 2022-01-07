
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct inet6_ifaddr {int prefix_len; int addr; } ;
struct TYPE_5__ {scalar_t__ optimistic_dad; } ;
struct inet6_dev {int dev; TYPE_1__ cnf; } ;
struct in6_addr {int dummy; } ;
struct ifa6_config {int plen; int ifa_flags; int scope; int preferred_lft; int valid_lft; struct in6_addr const* pfx; } ;
struct TYPE_7__ {TYPE_2__* devconf_all; } ;
struct TYPE_8__ {TYPE_3__ ipv6; } ;
struct TYPE_6__ {int forwarding; scalar_t__ optimistic_dad; } ;


 int GFP_ATOMIC ;
 int IFA_F_OPTIMISTIC ;
 int IFA_F_PERMANENT ;
 int IFA_LINK ;
 int INFINITY_LIFE_TIME ;
 int IS_ERR (struct inet6_ifaddr*) ;
 int addrconf_dad_start (struct inet6_ifaddr*) ;
 int addrconf_prefix_route (int *,int ,int ,int ,int ,int ,int ) ;
 TYPE_4__* dev_net (int ) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 struct inet6_ifaddr* ipv6_add_addr (struct inet6_dev*,struct ifa6_config*,int,int *) ;

void addrconf_add_linklocal(struct inet6_dev *idev,
       const struct in6_addr *addr, u32 flags)
{
 struct ifa6_config cfg = {
  .pfx = addr,
  .plen = 64,
  .ifa_flags = flags | IFA_F_PERMANENT,
  .valid_lft = INFINITY_LIFE_TIME,
  .preferred_lft = INFINITY_LIFE_TIME,
  .scope = IFA_LINK
 };
 struct inet6_ifaddr *ifp;
 ifp = ipv6_add_addr(idev, &cfg, 1, ((void*)0));
 if (!IS_ERR(ifp)) {
  addrconf_prefix_route(&ifp->addr, ifp->prefix_len, 0, idev->dev,
          0, 0, GFP_ATOMIC);
  addrconf_dad_start(ifp);
  in6_ifa_put(ifp);
 }
}
