
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct net_device* nhc_dev; } ;
struct nh_info {int dev_hash; TYPE_1__ fib_nhc; } ;
struct net_device {int ifindex; } ;
struct TYPE_4__ {struct hlist_head* devhash; } ;
struct net {TYPE_2__ nexthop; } ;
struct hlist_head {int dummy; } ;


 int WARN_ON (int) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 unsigned int nh_dev_hashfn (int ) ;

__attribute__((used)) static void nexthop_devhash_add(struct net *net, struct nh_info *nhi)
{
 struct net_device *dev = nhi->fib_nhc.nhc_dev;
 struct hlist_head *head;
 unsigned int hash;

 WARN_ON(!dev);

 hash = nh_dev_hashfn(dev->ifindex);
 head = &net->nexthop.devhash[hash];
 hlist_add_head(&nhi->dev_hash, head);
}
