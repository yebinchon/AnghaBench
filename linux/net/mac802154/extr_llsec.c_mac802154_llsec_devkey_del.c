
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct mac802154_llsec_device_key {TYPE_1__ devkey; } ;
struct mac802154_llsec_device {int dummy; } ;
struct mac802154_llsec {int dummy; } ;
struct ieee802154_llsec_device_key {int key_id; } ;
typedef int __le64 ;


 int ENOENT ;
 int kfree_rcu (struct mac802154_llsec_device_key*,int ) ;
 int list_del_rcu (int *) ;
 struct mac802154_llsec_device* llsec_dev_find_long (struct mac802154_llsec*,int ) ;
 struct mac802154_llsec_device_key* llsec_devkey_find (struct mac802154_llsec_device*,int *) ;
 int rcu ;

int mac802154_llsec_devkey_del(struct mac802154_llsec *sec,
          __le64 dev_addr,
          const struct ieee802154_llsec_device_key *key)
{
 struct mac802154_llsec_device *dev;
 struct mac802154_llsec_device_key *devkey;

 dev = llsec_dev_find_long(sec, dev_addr);

 if (!dev)
  return -ENOENT;

 devkey = llsec_devkey_find(dev, &key->key_id);
 if (!devkey)
  return -ENOENT;

 list_del_rcu(&devkey->devkey.list);
 kfree_rcu(devkey, rcu);
 return 0;
}
