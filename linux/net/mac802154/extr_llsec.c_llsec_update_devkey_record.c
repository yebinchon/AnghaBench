
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee802154_llsec_key_id {int dummy; } ;
struct TYPE_4__ {int list; struct ieee802154_llsec_key_id key_id; } ;
struct mac802154_llsec_device_key {TYPE_2__ devkey; } ;
struct TYPE_3__ {int keys; } ;
struct mac802154_llsec_device {int lock; TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct mac802154_llsec_device_key* kzalloc (int,int ) ;
 int kzfree (struct mac802154_llsec_device_key*) ;
 int list_add_rcu (int *,int *) ;
 struct mac802154_llsec_device_key* llsec_devkey_find (struct mac802154_llsec_device*,struct ieee802154_llsec_key_id const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
llsec_update_devkey_record(struct mac802154_llsec_device *dev,
      const struct ieee802154_llsec_key_id *in_key)
{
 struct mac802154_llsec_device_key *devkey;

 devkey = llsec_devkey_find(dev, in_key);

 if (!devkey) {
  struct mac802154_llsec_device_key *next;

  next = kzalloc(sizeof(*devkey), GFP_ATOMIC);
  if (!next)
   return -ENOMEM;

  next->devkey.key_id = *in_key;

  spin_lock_bh(&dev->lock);

  devkey = llsec_devkey_find(dev, in_key);
  if (!devkey)
   list_add_rcu(&next->devkey.list, &dev->dev.keys);
  else
   kzfree(next);

  spin_unlock_bh(&dev->lock);
 }

 return 0;
}
