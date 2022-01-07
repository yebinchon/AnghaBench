
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int id; TYPE_2__* up; } ;
struct caif_device_entry {TYPE_1__ layer; } ;
struct TYPE_4__ {int (* ctrlcmd ) (TYPE_2__*,int ,int ) ;} ;


 int _CAIF_CTRLCMD_PHYIF_FLOW_OFF_IND ;
 int _CAIF_CTRLCMD_PHYIF_FLOW_ON_IND ;
 struct caif_device_entry* caif_get (struct net_device*) ;
 int caifd_hold (struct caif_device_entry*) ;
 int caifd_put (struct caif_device_entry*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void dev_flowctrl(struct net_device *dev, int on)
{
 struct caif_device_entry *caifd;

 rcu_read_lock();

 caifd = caif_get(dev);
 if (!caifd || !caifd->layer.up || !caifd->layer.up->ctrlcmd) {
  rcu_read_unlock();
  return;
 }

 caifd_hold(caifd);
 rcu_read_unlock();

 caifd->layer.up->ctrlcmd(caifd->layer.up,
     on ?
     _CAIF_CTRLCMD_PHYIF_FLOW_ON_IND :
     _CAIF_CTRLCMD_PHYIF_FLOW_OFF_IND,
     caifd->layer.id);
 caifd_put(caifd);
}
