
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_bridge {int dev; int lock; int group_addr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int user_ns; } ;


 int BROPT_GROUP_ADDR_SET ;
 int CAP_NET_ADMIN ;
 size_t EINVAL ;
 size_t EPERM ;
 int br_opt_toggle (struct net_bridge*,int ,int) ;
 int br_recalculate_fwd_mask (struct net_bridge*) ;
 TYPE_1__* dev_net (int ) ;
 int ether_addr_copy (int ,int*) ;
 int is_link_local_ether_addr (int*) ;
 int mac_pton (char const*,int*) ;
 int netdev_state_change (int ) ;
 int ns_capable (int ,int ) ;
 size_t restart_syscall () ;
 int rtnl_trylock () ;
 int rtnl_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct net_bridge* to_bridge (struct device*) ;

__attribute__((used)) static ssize_t group_addr_store(struct device *d,
    struct device_attribute *attr,
    const char *buf, size_t len)
{
 struct net_bridge *br = to_bridge(d);
 u8 new_addr[6];

 if (!ns_capable(dev_net(br->dev)->user_ns, CAP_NET_ADMIN))
  return -EPERM;

 if (!mac_pton(buf, new_addr))
  return -EINVAL;

 if (!is_link_local_ether_addr(new_addr))
  return -EINVAL;

 if (new_addr[5] == 1 ||
     new_addr[5] == 2 ||
     new_addr[5] == 3)
  return -EINVAL;

 if (!rtnl_trylock())
  return restart_syscall();

 spin_lock_bh(&br->lock);
 ether_addr_copy(br->group_addr, new_addr);
 spin_unlock_bh(&br->lock);

 br_opt_toggle(br, BROPT_GROUP_ADDR_SET, 1);
 br_recalculate_fwd_mask(br);
 netdev_state_change(br->dev);

 rtnl_unlock();

 return len;
}
