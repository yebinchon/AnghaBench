
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee802154_local {int dummy; } ;


 int cpu_to_le64 (int) ;
 struct net_device* ieee802154_if_add (struct ieee802154_local*,char const*,unsigned char,int,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct ieee802154_local* wpan_phy_priv (struct wpan_phy*) ;

__attribute__((used)) static struct net_device *
ieee802154_add_iface_deprecated(struct wpan_phy *wpan_phy,
    const char *name,
    unsigned char name_assign_type, int type)
{
 struct ieee802154_local *local = wpan_phy_priv(wpan_phy);
 struct net_device *dev;

 rtnl_lock();
 dev = ieee802154_if_add(local, name, name_assign_type, type,
    cpu_to_le64(0x0000000000000000ULL));
 rtnl_unlock();

 return dev;
}
