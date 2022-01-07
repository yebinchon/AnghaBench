
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ type; int mpls_ptr; } ;
struct mpls_dev {int rcu; } ;


 scalar_t__ ARPHRD_ETHER ;
 scalar_t__ ARPHRD_IP6GRE ;
 scalar_t__ ARPHRD_IPGRE ;
 scalar_t__ ARPHRD_LOOPBACK ;
 scalar_t__ ARPHRD_SIT ;
 scalar_t__ ARPHRD_TUNNEL ;
 unsigned int IFF_LOWER_UP ;
 unsigned int IFF_RUNNING ;
 scalar_t__ IS_ERR (struct mpls_dev*) ;



 unsigned long NETDEV_REGISTER ;


 int NOTIFY_OK ;
 int PTR_ERR (struct mpls_dev*) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int RTNH_F_DEAD ;
 int RTNH_F_LINKDOWN ;
 int call_rcu (int *,int ) ;
 unsigned int dev_get_flags (struct net_device*) ;
 struct mpls_dev* mpls_add_dev (struct net_device*) ;
 int mpls_dev_destroy_rcu ;
 struct mpls_dev* mpls_dev_get (struct net_device*) ;
 int mpls_dev_sysctl_register (struct net_device*,struct mpls_dev*) ;
 int mpls_dev_sysctl_unregister (struct net_device*,struct mpls_dev*) ;
 int mpls_ifdown (struct net_device*,unsigned long) ;
 int mpls_ifup (struct net_device*,int) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int notifier_from_errno (int) ;

__attribute__((used)) static int mpls_dev_notify(struct notifier_block *this, unsigned long event,
      void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct mpls_dev *mdev;
 unsigned int flags;

 if (event == NETDEV_REGISTER) {




  if (dev->type == ARPHRD_ETHER ||
      dev->type == ARPHRD_LOOPBACK ||
      dev->type == ARPHRD_IPGRE ||
      dev->type == ARPHRD_IP6GRE ||
      dev->type == ARPHRD_SIT ||
      dev->type == ARPHRD_TUNNEL) {
   mdev = mpls_add_dev(dev);
   if (IS_ERR(mdev))
    return notifier_from_errno(PTR_ERR(mdev));
  }
  return NOTIFY_OK;
 }

 mdev = mpls_dev_get(dev);
 if (!mdev)
  return NOTIFY_OK;

 switch (event) {
 case 130:
  mpls_ifdown(dev, event);
  break;
 case 128:
  flags = dev_get_flags(dev);
  if (flags & (IFF_RUNNING | IFF_LOWER_UP))
   mpls_ifup(dev, RTNH_F_DEAD | RTNH_F_LINKDOWN);
  else
   mpls_ifup(dev, RTNH_F_DEAD);
  break;
 case 132:
  flags = dev_get_flags(dev);
  if (flags & (IFF_RUNNING | IFF_LOWER_UP))
   mpls_ifup(dev, RTNH_F_DEAD | RTNH_F_LINKDOWN);
  else
   mpls_ifdown(dev, event);
  break;
 case 129:
  mpls_ifdown(dev, event);
  mdev = mpls_dev_get(dev);
  if (mdev) {
   mpls_dev_sysctl_unregister(dev, mdev);
   RCU_INIT_POINTER(dev->mpls_ptr, ((void*)0));
   call_rcu(&mdev->rcu, mpls_dev_destroy_rcu);
  }
  break;
 case 131:
  mdev = mpls_dev_get(dev);
  if (mdev) {
   int err;

   mpls_dev_sysctl_unregister(dev, mdev);
   err = mpls_dev_sysctl_register(dev, mdev);
   if (err)
    return notifier_from_errno(err);
  }
  break;
 }
 return NOTIFY_OK;
}
