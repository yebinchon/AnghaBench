
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct in_device {struct net_device* dev; } ;
typedef int __be32 ;


 int MAX_ADDR_LEN ;
 scalar_t__ arp_mc_map (int ,char*,struct net_device*,int ) ;
 int dev_mc_add (struct net_device*,char*) ;

__attribute__((used)) static void ip_mc_filter_add(struct in_device *in_dev, __be32 addr)
{
 char buf[MAX_ADDR_LEN];
 struct net_device *dev = in_dev->dev;
 if (arp_mc_map(addr, buf, dev, 0) == 0)
  dev_mc_add(dev, buf);
}
