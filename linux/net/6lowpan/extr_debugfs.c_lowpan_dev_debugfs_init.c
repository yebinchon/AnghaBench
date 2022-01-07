
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {char* name; } ;
struct lowpan_dev {int ctx; void* iface_debugfs; } ;
struct dentry {int dummy; } ;


 int LOWPAN_IPHC_CTX_TABLE_SIZE ;
 void* debugfs_create_dir (char*,void*) ;
 int debugfs_create_file (char*,int,struct dentry*,int *,int *) ;
 int lowpan_context_fops ;
 void* lowpan_debugfs ;
 struct lowpan_dev* lowpan_dev (struct net_device*) ;
 int lowpan_dev_debugfs_802154_init (struct net_device*,struct lowpan_dev*) ;
 int lowpan_dev_debugfs_ctx_init (struct net_device*,struct dentry*,int) ;

void lowpan_dev_debugfs_init(struct net_device *dev)
{
 struct lowpan_dev *ldev = lowpan_dev(dev);
 struct dentry *contexts;
 int i;


 ldev->iface_debugfs = debugfs_create_dir(dev->name, lowpan_debugfs);

 contexts = debugfs_create_dir("contexts", ldev->iface_debugfs);

 debugfs_create_file("show", 0644, contexts, &lowpan_dev(dev)->ctx,
       &lowpan_context_fops);

 for (i = 0; i < LOWPAN_IPHC_CTX_TABLE_SIZE; i++)
  lowpan_dev_debugfs_ctx_init(dev, contexts, i);

 lowpan_dev_debugfs_802154_init(dev, ldev);
}
