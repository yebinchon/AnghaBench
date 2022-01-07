
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct devlink {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {int name; } ;


 int DEVLINK_ATTR_BUS_NAME ;
 int DEVLINK_ATTR_DEV_NAME ;
 int EMSGSIZE ;
 int dev_name (TYPE_2__*) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int devlink_nl_put_handle(struct sk_buff *msg, struct devlink *devlink)
{
 if (nla_put_string(msg, DEVLINK_ATTR_BUS_NAME, devlink->dev->bus->name))
  return -EMSGSIZE;
 if (nla_put_string(msg, DEVLINK_ATTR_DEV_NAME, dev_name(devlink->dev)))
  return -EMSGSIZE;
 return 0;
}
