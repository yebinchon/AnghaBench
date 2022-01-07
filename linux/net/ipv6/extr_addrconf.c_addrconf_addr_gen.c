
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr_gen_mode; } ;
struct inet6_dev {int dev; TYPE_1__ cnf; } ;
struct in6_addr {int s6_addr; } ;


 int GFP_KERNEL ;
 int IFA_F_STABLE_PRIVACY ;




 int addrconf_add_linklocal (struct inet6_dev*,struct in6_addr*,int ) ;
 int addrconf_prefix_route (struct in6_addr*,int,int ,int ,int ,int ,int ) ;
 int htonl (int) ;
 int ipv6_addr_set (struct in6_addr*,int ,int ,int ,int ) ;
 int ipv6_gen_mode_random_init (struct inet6_dev*) ;
 int ipv6_generate_eui64 (int ,int ) ;
 int ipv6_generate_stable_address (struct in6_addr*,int ,struct inet6_dev*) ;
 scalar_t__ netif_is_l3_master (int ) ;

__attribute__((used)) static void addrconf_addr_gen(struct inet6_dev *idev, bool prefix_route)
{
 struct in6_addr addr;


 if (netif_is_l3_master(idev->dev))
  return;

 ipv6_addr_set(&addr, htonl(0xFE800000), 0, 0, 0);

 switch (idev->cnf.addr_gen_mode) {
 case 129:
  ipv6_gen_mode_random_init(idev);

 case 128:
  if (!ipv6_generate_stable_address(&addr, 0, idev))
   addrconf_add_linklocal(idev, &addr,
            IFA_F_STABLE_PRIVACY);
  else if (prefix_route)
   addrconf_prefix_route(&addr, 64, 0, idev->dev,
           0, 0, GFP_KERNEL);
  break;
 case 131:




  if (ipv6_generate_eui64(addr.s6_addr + 8, idev->dev) == 0)
   addrconf_add_linklocal(idev, &addr, 0);
  else if (prefix_route)
   addrconf_prefix_route(&addr, 64, 0, idev->dev,
           0, 0, GFP_KERNEL);
  break;
 case 130:
 default:

  break;
 }
}
