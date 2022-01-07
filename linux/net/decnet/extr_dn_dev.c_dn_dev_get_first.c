
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dn_ptr; } ;
struct dn_ifaddr {int ifa_local; } ;
struct dn_dev {int ifa_list; } ;
typedef int __le16 ;


 int ENODEV ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int dn_dev_get_first(struct net_device *dev, __le16 *addr)
{
 struct dn_dev *dn_db;
 struct dn_ifaddr *ifa;
 int rv = -ENODEV;

 rcu_read_lock();
 dn_db = rcu_dereference(dev->dn_ptr);
 if (dn_db == ((void*)0))
  goto out;

 ifa = rcu_dereference(dn_db->ifa_list);
 if (ifa != ((void*)0)) {
  *addr = ifa->ifa_local;
  rv = 0;
 }
out:
 rcu_read_unlock();
 return rv;
}
