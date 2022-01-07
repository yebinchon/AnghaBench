
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dn_ptr; } ;
struct dn_ifaddr {int dummy; } ;
struct dn_dev {int ifa_list; } ;


 int dn_dev_del_ifa (struct dn_dev*,int *,int ) ;
 int dn_dev_delete (struct net_device*) ;
 int dn_dev_free_ifa (struct dn_ifaddr*) ;
 void* rtnl_dereference (int ) ;

void dn_dev_down(struct net_device *dev)
{
 struct dn_dev *dn_db = rtnl_dereference(dev->dn_ptr);
 struct dn_ifaddr *ifa;

 if (dn_db == ((void*)0))
  return;

 while ((ifa = rtnl_dereference(dn_db->ifa_list)) != ((void*)0)) {
  dn_dev_del_ifa(dn_db, &dn_db->ifa_list, 0);
  dn_dev_free_ifa(ifa);
 }

 dn_dev_delete(dev);
}
