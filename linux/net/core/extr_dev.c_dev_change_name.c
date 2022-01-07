
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int priv_flags; char const* name; unsigned char name_assign_type; int name_hlist; int dev; } ;
struct net {int dummy; } ;


 int ASSERT_RTNL () ;
 int BUG_ON (int) ;
 int EBUSY ;
 int IFF_LIVE_RENAME_OK ;
 int IFF_UP ;
 int IFNAMSIZ ;
 int NETDEV_CHANGENAME ;
 void* NET_NAME_RENAMED ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int dev_base_lock ;
 int dev_get_valid_name (struct net*,struct net_device*,char const*) ;
 int dev_name_hash (struct net*,char*) ;
 struct net* dev_net (struct net_device*) ;
 int device_rename (int *,char const*) ;
 int devnet_rename_seq ;
 int hlist_add_head_rcu (int *,int ) ;
 int hlist_del_rcu (int *) ;
 scalar_t__ likely (int) ;
 int memcpy (char*,char const*,int) ;
 int netdev_adjacent_rename_links (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*,char*) ;
 int notifier_to_errno (int) ;
 int pr_err (char*,char*,int) ;
 int strchr (char*,char) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 int synchronize_rcu () ;
 int write_lock_bh (int *) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;
 int write_unlock_bh (int *) ;

int dev_change_name(struct net_device *dev, const char *newname)
{
 unsigned char old_assign_type;
 char oldname[IFNAMSIZ];
 int err = 0;
 int ret;
 struct net *net;

 ASSERT_RTNL();
 BUG_ON(!dev_net(dev));

 net = dev_net(dev);
 if (dev->flags & IFF_UP &&
     likely(!(dev->priv_flags & IFF_LIVE_RENAME_OK)))
  return -EBUSY;

 write_seqcount_begin(&devnet_rename_seq);

 if (strncmp(newname, dev->name, IFNAMSIZ) == 0) {
  write_seqcount_end(&devnet_rename_seq);
  return 0;
 }

 memcpy(oldname, dev->name, IFNAMSIZ);

 err = dev_get_valid_name(net, dev, newname);
 if (err < 0) {
  write_seqcount_end(&devnet_rename_seq);
  return err;
 }

 if (oldname[0] && !strchr(oldname, '%'))
  netdev_info(dev, "renamed from %s\n", oldname);

 old_assign_type = dev->name_assign_type;
 dev->name_assign_type = NET_NAME_RENAMED;

rollback:
 ret = device_rename(&dev->dev, dev->name);
 if (ret) {
  memcpy(dev->name, oldname, IFNAMSIZ);
  dev->name_assign_type = old_assign_type;
  write_seqcount_end(&devnet_rename_seq);
  return ret;
 }

 write_seqcount_end(&devnet_rename_seq);

 netdev_adjacent_rename_links(dev, oldname);

 write_lock_bh(&dev_base_lock);
 hlist_del_rcu(&dev->name_hlist);
 write_unlock_bh(&dev_base_lock);

 synchronize_rcu();

 write_lock_bh(&dev_base_lock);
 hlist_add_head_rcu(&dev->name_hlist, dev_name_hash(net, dev->name));
 write_unlock_bh(&dev_base_lock);

 ret = call_netdevice_notifiers(NETDEV_CHANGENAME, dev);
 ret = notifier_to_errno(ret);

 if (ret) {

  if (err >= 0) {
   err = ret;
   write_seqcount_begin(&devnet_rename_seq);
   memcpy(dev->name, oldname, IFNAMSIZ);
   memcpy(oldname, newname, IFNAMSIZ);
   dev->name_assign_type = old_assign_type;
   old_assign_type = NET_NAME_RENAMED;
   goto rollback;
  } else {
   pr_err("%s: name change rollback failed: %d\n",
          dev->name, ret);
  }
 }

 return err;
}
