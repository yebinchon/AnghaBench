
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phonet_device {int addrs; } ;
struct net_device {int dummy; } ;


 int BUG_ON (int ) ;
 int PN_NO_ADDR ;
 struct phonet_device* __phonet_get_rcu (struct net_device*) ;
 int bitmap_empty (int ,int) ;
 int dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int find_first_bit (int ,int) ;
 struct net_device* phonet_device_get (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ test_bit (int,int ) ;

u8 phonet_address_get(struct net_device *dev, u8 daddr)
{
 struct phonet_device *pnd;
 u8 saddr;

 rcu_read_lock();
 pnd = __phonet_get_rcu(dev);
 if (pnd) {
  BUG_ON(bitmap_empty(pnd->addrs, 64));


  if (test_bit(daddr >> 2, pnd->addrs))
   saddr = daddr;
  else
   saddr = find_first_bit(pnd->addrs, 64) << 2;
 } else
  saddr = PN_NO_ADDR;
 rcu_read_unlock();

 if (saddr == PN_NO_ADDR) {

  struct net_device *def_dev;

  def_dev = phonet_device_get(dev_net(dev));
  if (def_dev) {
   if (def_dev != dev)
    saddr = phonet_address_get(def_dev, daddr);
   dev_put(def_dev);
  }
 }
 return saddr;
}
