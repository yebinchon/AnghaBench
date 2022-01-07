
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_local {int phy; int iflist_mtx; int interfaces; } ;
struct ieee802154_hw {int dummy; } ;


 int BUG_ON (int) ;
 struct ieee802154_local* hw_to_local (struct ieee802154_hw*) ;
 int list_empty (int *) ;
 int mutex_destroy (int *) ;
 int wpan_phy_free (int ) ;

void ieee802154_free_hw(struct ieee802154_hw *hw)
{
 struct ieee802154_local *local = hw_to_local(hw);

 BUG_ON(!list_empty(&local->interfaces));

 mutex_destroy(&local->iflist_mtx);

 wpan_phy_free(local->phy);
}
