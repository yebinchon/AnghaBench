
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_device {int dummy; } ;
typedef int __be32 ;


 int GFP_KERNEL ;
 int __ip_mc_inc_group (struct in_device*,int ,int ) ;

void ip_mc_inc_group(struct in_device *in_dev, __be32 addr)
{
 __ip_mc_inc_group(in_dev, addr, GFP_KERNEL);
}
