
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dsa_port {int index; TYPE_1__* ds; } ;
struct TYPE_4__ {struct net_device* dev; } ;
struct dsa_notifier_register_info {TYPE_2__ info; struct net_device* master; int port_number; int switch_number; } ;
struct TYPE_3__ {int index; } ;


 int call_dsa_notifiers (unsigned long,struct net_device*,TYPE_2__*) ;
 struct net_device* dsa_slave_to_master (struct net_device*) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;

__attribute__((used)) static void dsa_slave_notify(struct net_device *dev, unsigned long val)
{
 struct net_device *master = dsa_slave_to_master(dev);
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct dsa_notifier_register_info rinfo = {
  .switch_number = dp->ds->index,
  .port_number = dp->index,
  .master = master,
  .info.dev = dev,
 };

 call_dsa_notifiers(val, dev, &rinfo.info);
}
