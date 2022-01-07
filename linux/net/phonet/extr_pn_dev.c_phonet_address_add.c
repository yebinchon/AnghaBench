
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phonet_device_list {int lock; } ;
struct phonet_device {int addrs; } ;
struct net_device {int dummy; } ;


 int EEXIST ;
 int ENOMEM ;
 struct phonet_device* __phonet_device_alloc (struct net_device*) ;
 struct phonet_device* __phonet_get (struct net_device*) ;
 int dev_net (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct phonet_device_list* phonet_device_list (int ) ;
 scalar_t__ test_and_set_bit (int,int ) ;
 scalar_t__ unlikely (int ) ;

int phonet_address_add(struct net_device *dev, u8 addr)
{
 struct phonet_device_list *pndevs = phonet_device_list(dev_net(dev));
 struct phonet_device *pnd;
 int err = 0;

 mutex_lock(&pndevs->lock);

 pnd = __phonet_get(dev);
 if (pnd == ((void*)0))
  pnd = __phonet_device_alloc(dev);
 if (unlikely(pnd == ((void*)0)))
  err = -ENOMEM;
 else if (test_and_set_bit(addr >> 2, pnd->addrs))
  err = -EEXIST;
 mutex_unlock(&pndevs->lock);
 return err;
}
