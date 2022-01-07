
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int lifs_period; int symbol_duration; int sifs_period; } ;


 int IEEE802154_LIFS_PERIOD ;
 int IEEE802154_SIFS_PERIOD ;

__attribute__((used)) static void ieee802154_setup_wpan_phy_pib(struct wpan_phy *wpan_phy)
{




 wpan_phy->lifs_period = IEEE802154_LIFS_PERIOD *
    wpan_phy->symbol_duration;
 wpan_phy->sifs_period = IEEE802154_SIFS_PERIOD *
    wpan_phy->symbol_duration;
}
