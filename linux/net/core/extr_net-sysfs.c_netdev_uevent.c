
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ifindex; int name; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static int netdev_uevent(struct device *d, struct kobj_uevent_env *env)
{
 struct net_device *dev = to_net_dev(d);
 int retval;


 retval = add_uevent_var(env, "INTERFACE=%s", dev->name);
 if (retval)
  goto exit;





 retval = add_uevent_var(env, "IFINDEX=%d", dev->ifindex);

exit:
 return retval;
}
