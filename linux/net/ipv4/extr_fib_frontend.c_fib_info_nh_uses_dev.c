
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ifindex; } ;
struct fib_nh_common {struct net_device const* nhc_dev; } ;
struct fib_info {int dummy; } ;


 struct fib_nh_common* fib_info_nhc (struct fib_info*,int) ;
 int fib_info_num_path (struct fib_info*) ;
 scalar_t__ l3mdev_master_ifindex_rcu (struct net_device const*) ;

bool fib_info_nh_uses_dev(struct fib_info *fi, const struct net_device *dev)
{
 bool dev_match = 0;
 if (fib_info_nhc(fi, 0)->nhc_dev == dev)
  dev_match = 1;


 return dev_match;
}
