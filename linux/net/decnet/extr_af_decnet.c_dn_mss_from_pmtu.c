
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dn_ptr; } ;
struct dn_dev {scalar_t__ use_long; } ;


 int DN_MAX_NSP_DATA_HEADER ;
 scalar_t__ LL_RESERVED_SPACE (struct net_device*) ;
 struct dn_dev* rcu_dereference_raw (int ) ;

unsigned int dn_mss_from_pmtu(struct net_device *dev, int mtu)
{
 unsigned int mss = 230 - DN_MAX_NSP_DATA_HEADER;
 if (dev) {
  struct dn_dev *dn_db = rcu_dereference_raw(dev->dn_ptr);
  mtu -= LL_RESERVED_SPACE(dev);
  if (dn_db->use_long)
   mtu -= 21;
  else
   mtu -= 6;
  mtu -= DN_MAX_NSP_DATA_HEADER;
 } else {



  mtu -= (21 + DN_MAX_NSP_DATA_HEADER + 16);
 }
 if (mtu > mss)
  mss = mtu;
 return mss;
}
