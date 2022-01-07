
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {scalar_t__ _msg; } ;
struct net_device {int name; } ;
typedef int extack ;


 int dev_set_mtu_ext (struct net_device*,int,struct netlink_ext_ack*) ;
 int memset (struct netlink_ext_ack*,int ,int) ;
 int net_err_ratelimited (char*,int ,scalar_t__) ;

int dev_set_mtu(struct net_device *dev, int new_mtu)
{
 struct netlink_ext_ack extack;
 int err;

 memset(&extack, 0, sizeof(extack));
 err = dev_set_mtu_ext(dev, new_mtu, &extack);
 if (err && extack._msg)
  net_err_ratelimited("%s: %s\n", dev->name, extack._msg);
 return err;
}
