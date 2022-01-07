
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dn_ptr; } ;
struct dn_ifaddr {int ifa_scope; int ifa_local; int ifa_next; } ;
struct dn_dev {int ifa_list; } ;
typedef int __le16 ;


 int dn_match_addr (int ,int ) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static __le16 dnet_select_source(const struct net_device *dev, __le16 daddr, int scope)
{
 __le16 saddr = 0;
 struct dn_dev *dn_db;
 struct dn_ifaddr *ifa;
 int best_match = 0;
 int ret;

 rcu_read_lock();
 dn_db = rcu_dereference(dev->dn_ptr);
 for (ifa = rcu_dereference(dn_db->ifa_list);
      ifa != ((void*)0);
      ifa = rcu_dereference(ifa->ifa_next)) {
  if (ifa->ifa_scope > scope)
   continue;
  if (!daddr) {
   saddr = ifa->ifa_local;
   break;
  }
  ret = dn_match_addr(daddr, ifa->ifa_local);
  if (ret > best_match)
   saddr = ifa->ifa_local;
  if (best_match == 0)
   saddr = ifa->ifa_local;
 }
 rcu_read_unlock();

 return saddr;
}
