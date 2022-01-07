
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int proc_net_devsnmp6; } ;
struct net {TYPE_1__ mib; } ;
struct TYPE_4__ {int * proc_dir_entry; } ;
struct inet6_dev {TYPE_2__ stats; int dev; } ;


 int EINVAL ;
 int ENOENT ;
 struct net* dev_net (int ) ;
 int proc_remove (int *) ;

int snmp6_unregister_dev(struct inet6_dev *idev)
{
 struct net *net = dev_net(idev->dev);
 if (!net->mib.proc_net_devsnmp6)
  return -ENOENT;
 if (!idev->stats.proc_dir_entry)
  return -EINVAL;
 proc_remove(idev->stats.proc_dir_entry);
 idev->stats.proc_dir_entry = ((void*)0);
 return 0;
}
