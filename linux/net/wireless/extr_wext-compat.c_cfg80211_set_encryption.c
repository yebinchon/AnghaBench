
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int ieee80211_ptr; } ;
struct key_params {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;


 int __cfg80211_set_encryption (struct cfg80211_registered_device*,struct net_device*,int,int const*,int,int,int,struct key_params*) ;
 int wdev_lock (int ) ;
 int wdev_unlock (int ) ;

__attribute__((used)) static int cfg80211_set_encryption(struct cfg80211_registered_device *rdev,
       struct net_device *dev, bool pairwise,
       const u8 *addr, bool remove, bool tx_key,
       int idx, struct key_params *params)
{
 int err;

 wdev_lock(dev->ieee80211_ptr);
 err = __cfg80211_set_encryption(rdev, dev, pairwise, addr,
     remove, tx_key, idx, params);
 wdev_unlock(dev->ieee80211_ptr);

 return err;
}
