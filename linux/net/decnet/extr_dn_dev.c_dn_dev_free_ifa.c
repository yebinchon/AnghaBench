
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_ifaddr {int dummy; } ;


 int kfree_rcu (struct dn_ifaddr*,int ) ;
 int rcu ;

__attribute__((used)) static void dn_dev_free_ifa(struct dn_ifaddr *ifa)
{
 kfree_rcu(ifa, rcu);
}
