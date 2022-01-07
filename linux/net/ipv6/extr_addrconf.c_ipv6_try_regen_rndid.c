
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int rndid; } ;
struct in6_addr {int * s6_addr; } ;


 int ipv6_regen_rndid (struct inet6_dev*) ;
 scalar_t__ memcmp (int ,int *,int) ;

__attribute__((used)) static void ipv6_try_regen_rndid(struct inet6_dev *idev, struct in6_addr *tmpaddr)
{
 if (tmpaddr && memcmp(idev->rndid, &tmpaddr->s6_addr[8], 8) == 0)
  ipv6_regen_rndid(idev);
}
