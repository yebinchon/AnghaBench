
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct switchdev_notifier_fdb_info {unsigned char const* addr; int added_by_user; int offloaded; int info; int vid; } ;
struct net_device {int dummy; } ;


 unsigned long SWITCHDEV_FDB_ADD_TO_DEVICE ;
 unsigned long SWITCHDEV_FDB_DEL_TO_DEVICE ;
 int call_switchdev_notifiers (unsigned long,struct net_device*,int *,int *) ;

__attribute__((used)) static void
br_switchdev_fdb_call_notifiers(bool adding, const unsigned char *mac,
    u16 vid, struct net_device *dev,
    bool added_by_user, bool offloaded)
{
 struct switchdev_notifier_fdb_info info;
 unsigned long notifier_type;

 info.addr = mac;
 info.vid = vid;
 info.added_by_user = added_by_user;
 info.offloaded = offloaded;
 notifier_type = adding ? SWITCHDEV_FDB_ADD_TO_DEVICE : SWITCHDEV_FDB_DEL_TO_DEVICE;
 call_switchdev_notifiers(notifier_type, dev, &info.info, ((void*)0));
}
