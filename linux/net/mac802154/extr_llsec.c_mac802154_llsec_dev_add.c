
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ieee802154_llsec_device {int list; int short_addr; int keys; int hwaddr; int pan_id; } ;
struct mac802154_llsec_device {struct ieee802154_llsec_device dev; int bucket_hw; int bucket_s; int lock; } ;
struct TYPE_2__ {int devices; } ;
struct mac802154_llsec {TYPE_1__ table; int devices_hw; int devices_short; } ;
typedef int hwkey ;


 int BUILD_BUG_ON (int) ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE802154_ADDR_LEN ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int hash_add_rcu (int ,int *,int ) ;
 struct mac802154_llsec_device* kmalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 scalar_t__ llsec_dev_find_long (struct mac802154_llsec*,int ) ;
 scalar_t__ llsec_dev_find_short (struct mac802154_llsec*,int ,int ) ;
 int llsec_dev_hash_long (int ) ;
 int llsec_dev_hash_short (int ,int ) ;
 scalar_t__ llsec_dev_use_shortaddr (int ) ;
 int spin_lock_init (int *) ;

int mac802154_llsec_dev_add(struct mac802154_llsec *sec,
       const struct ieee802154_llsec_device *dev)
{
 struct mac802154_llsec_device *entry;
 u32 skey = llsec_dev_hash_short(dev->short_addr, dev->pan_id);
 u64 hwkey = llsec_dev_hash_long(dev->hwaddr);

 BUILD_BUG_ON(sizeof(hwkey) != IEEE802154_ADDR_LEN);

 if ((llsec_dev_use_shortaddr(dev->short_addr) &&
      llsec_dev_find_short(sec, dev->short_addr, dev->pan_id)) ||
      llsec_dev_find_long(sec, dev->hwaddr))
  return -EEXIST;

 entry = kmalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 entry->dev = *dev;
 spin_lock_init(&entry->lock);
 INIT_LIST_HEAD(&entry->dev.keys);

 if (llsec_dev_use_shortaddr(dev->short_addr))
  hash_add_rcu(sec->devices_short, &entry->bucket_s, skey);
 else
  INIT_HLIST_NODE(&entry->bucket_s);

 hash_add_rcu(sec->devices_hw, &entry->bucket_hw, hwkey);
 list_add_tail_rcu(&entry->dev.list, &sec->table.devices);

 return 0;
}
