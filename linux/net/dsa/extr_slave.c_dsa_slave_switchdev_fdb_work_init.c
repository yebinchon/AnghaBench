
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct switchdev_notifier_fdb_info {int addr; } ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct dsa_switchdev_event_work {TYPE_1__ fdb_info; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int ether_addr_copy (int *,int ) ;
 scalar_t__ kzalloc (int ,int ) ;
 int memcpy (TYPE_1__*,struct switchdev_notifier_fdb_info const*,int) ;

__attribute__((used)) static int
dsa_slave_switchdev_fdb_work_init(struct dsa_switchdev_event_work *
      switchdev_work,
      const struct switchdev_notifier_fdb_info *
      fdb_info)
{
 memcpy(&switchdev_work->fdb_info, fdb_info,
        sizeof(switchdev_work->fdb_info));
 switchdev_work->fdb_info.addr = kzalloc(ETH_ALEN, GFP_ATOMIC);
 if (!switchdev_work->fdb_info.addr)
  return -ENOMEM;
 ether_addr_copy((u8 *)switchdev_work->fdb_info.addr,
   fdb_info->addr);
 return 0;
}
