
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct devlink_port {int registered; struct devlink* devlink; } ;
struct devlink {int dummy; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;


 int DEVLINK_CMD_PORT_DEL ;
 int DEVLINK_CMD_PORT_NEW ;
 int DEVLINK_MCGRP_CONFIG ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int WARN_ON (int) ;
 int devlink_net (struct devlink*) ;
 int devlink_nl_family ;
 int devlink_nl_port_fill (struct sk_buff*,struct devlink*,struct devlink_port*,int,int ,int ,int ) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static void devlink_port_notify(struct devlink_port *devlink_port,
    enum devlink_command cmd)
{
 struct devlink *devlink = devlink_port->devlink;
 struct sk_buff *msg;
 int err;

 if (!devlink_port->registered)
  return;

 WARN_ON(cmd != DEVLINK_CMD_PORT_NEW && cmd != DEVLINK_CMD_PORT_DEL);

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return;

 err = devlink_nl_port_fill(msg, devlink, devlink_port, cmd, 0, 0, 0);
 if (err) {
  nlmsg_free(msg);
  return;
 }

 genlmsg_multicast_netns(&devlink_nl_family, devlink_net(devlink),
    msg, 0, DEVLINK_MCGRP_CONFIG, GFP_KERNEL);
}
