
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct mac802154_llsec_device {int rcu; TYPE_1__ dev; int bucket_hw; int bucket_s; } ;
struct mac802154_llsec {int dummy; } ;
typedef int __le64 ;


 int ENOENT ;
 int call_rcu (int *,int ) ;
 int hash_del_rcu (int *) ;
 int list_del_rcu (int *) ;
 struct mac802154_llsec_device* llsec_dev_find_long (struct mac802154_llsec*,int ) ;
 int llsec_dev_free_rcu ;

int mac802154_llsec_dev_del(struct mac802154_llsec *sec, __le64 device_addr)
{
 struct mac802154_llsec_device *pos;

 pos = llsec_dev_find_long(sec, device_addr);
 if (!pos)
  return -ENOENT;

 hash_del_rcu(&pos->bucket_s);
 hash_del_rcu(&pos->bucket_hw);
 list_del_rcu(&pos->dev.list);
 call_rcu(&pos->rcu, llsec_dev_free_rcu);

 return 0;
}
