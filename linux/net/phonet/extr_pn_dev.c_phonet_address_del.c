
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phonet_device_list {int lock; } ;
struct phonet_device {int list; int addrs; } ;
struct net_device {int dummy; } ;


 int EADDRNOTAVAIL ;
 struct phonet_device* __phonet_get (struct net_device*) ;
 scalar_t__ bitmap_empty (int ,int) ;
 int dev_net (struct net_device*) ;
 int kfree_rcu (struct phonet_device*,int ) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct phonet_device_list* phonet_device_list (int ) ;
 int rcu ;
 int test_and_clear_bit (int,int ) ;

int phonet_address_del(struct net_device *dev, u8 addr)
{
 struct phonet_device_list *pndevs = phonet_device_list(dev_net(dev));
 struct phonet_device *pnd;
 int err = 0;

 mutex_lock(&pndevs->lock);
 pnd = __phonet_get(dev);
 if (!pnd || !test_and_clear_bit(addr >> 2, pnd->addrs)) {
  err = -EADDRNOTAVAIL;
  pnd = ((void*)0);
 } else if (bitmap_empty(pnd->addrs, 64))
  list_del_rcu(&pnd->list);
 else
  pnd = ((void*)0);
 mutex_unlock(&pndevs->lock);

 if (pnd)
  kfree_rcu(pnd, rcu);

 return err;
}
