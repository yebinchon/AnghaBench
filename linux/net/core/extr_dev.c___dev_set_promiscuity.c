
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int flags; scalar_t__ promiscuity; int name; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int ASSERT_RTNL () ;
 int AUDIT_ANOM_PROMISCUOUS ;
 int EOVERFLOW ;
 int GFP_ATOMIC ;
 int IFF_PROMISC ;
 int __dev_notify_flags (struct net_device*,unsigned int,int) ;
 int audit_context () ;
 scalar_t__ audit_enabled ;
 int audit_get_loginuid (int ) ;
 int audit_get_sessionid (int ) ;
 int audit_log (int ,int ,int ,char*,int ,int,unsigned int,int ,int ,int ,int ) ;
 int current ;
 int current_uid_gid (int *,int *) ;
 int dev_change_rx_flags (struct net_device*,int) ;
 int from_kgid (int *,int ) ;
 int from_kuid (int *,int ) ;
 int init_user_ns ;
 int pr_info (char*,int ,char*) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int __dev_set_promiscuity(struct net_device *dev, int inc, bool notify)
{
 unsigned int old_flags = dev->flags;
 kuid_t uid;
 kgid_t gid;

 ASSERT_RTNL();

 dev->flags |= IFF_PROMISC;
 dev->promiscuity += inc;
 if (dev->promiscuity == 0) {




  if (inc < 0)
   dev->flags &= ~IFF_PROMISC;
  else {
   dev->promiscuity -= inc;
   pr_warn("%s: promiscuity touches roof, set promiscuity failed. promiscuity feature of device might be broken.\n",
    dev->name);
   return -EOVERFLOW;
  }
 }
 if (dev->flags != old_flags) {
  pr_info("device %s %s promiscuous mode\n",
   dev->name,
   dev->flags & IFF_PROMISC ? "entered" : "left");
  if (audit_enabled) {
   current_uid_gid(&uid, &gid);
   audit_log(audit_context(), GFP_ATOMIC,
      AUDIT_ANOM_PROMISCUOUS,
      "dev=%s prom=%d old_prom=%d auid=%u uid=%u gid=%u ses=%u",
      dev->name, (dev->flags & IFF_PROMISC),
      (old_flags & IFF_PROMISC),
      from_kuid(&init_user_ns, audit_get_loginuid(current)),
      from_kuid(&init_user_ns, uid),
      from_kgid(&init_user_ns, gid),
      audit_get_sessionid(current));
  }

  dev_change_rx_flags(dev, IFF_PROMISC);
 }
 if (notify)
  __dev_notify_flags(dev, old_flags, IFF_PROMISC);
 return 0;
}
