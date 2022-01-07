
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_device {int dummy; } ;
typedef int gfp_t ;
typedef int __be32 ;


 int MCAST_EXCLUDE ;
 int ____ip_mc_inc_group (struct in_device*,int ,int ,int ) ;

void __ip_mc_inc_group(struct in_device *in_dev, __be32 addr, gfp_t gfp)
{
 ____ip_mc_inc_group(in_dev, addr, MCAST_EXCLUDE, gfp);
}
