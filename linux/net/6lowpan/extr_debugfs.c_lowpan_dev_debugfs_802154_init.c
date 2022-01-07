
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct lowpan_dev {int iface_debugfs; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {TYPE_1__* wdev; } ;
struct TYPE_3__ {int ieee802154_ptr; } ;


 int LOWPAN_LLTYPE_IEEE802154 ;
 struct dentry* debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,struct dentry*,int ,int *) ;
 TYPE_2__* lowpan_802154_dev (struct net_device const*) ;
 int lowpan_is_ll (struct net_device const*,int ) ;
 int lowpan_short_addr_fops ;

__attribute__((used)) static void lowpan_dev_debugfs_802154_init(const struct net_device *dev,
       struct lowpan_dev *ldev)
{
 struct dentry *root;

 if (!lowpan_is_ll(dev, LOWPAN_LLTYPE_IEEE802154))
  return;

 root = debugfs_create_dir("ieee802154", ldev->iface_debugfs);

 debugfs_create_file("short_addr", 0444, root,
       lowpan_802154_dev(dev)->wdev->ieee802154_ptr,
       &lowpan_short_addr_fops);
}
