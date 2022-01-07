
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_2__ {int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct cbs_sched_data {int port_rate; } ;


 int BYTES_PER_KBIT ;
 int SPEED_10 ;
 int SPEED_UNKNOWN ;
 int __ethtool_get_link_ksettings (struct net_device*,struct ethtool_link_ksettings*) ;
 scalar_t__ atomic64_read (int *) ;
 int atomic64_set (int *,int) ;
 int netdev_dbg (struct net_device*,char*,int ,long long,int) ;

__attribute__((used)) static void cbs_set_port_rate(struct net_device *dev, struct cbs_sched_data *q)
{
 struct ethtool_link_ksettings ecmd;
 int speed = SPEED_10;
 int port_rate;
 int err;

 err = __ethtool_get_link_ksettings(dev, &ecmd);
 if (err < 0)
  goto skip;

 if (ecmd.base.speed && ecmd.base.speed != SPEED_UNKNOWN)
  speed = ecmd.base.speed;

skip:
 port_rate = speed * 1000 * BYTES_PER_KBIT;

 atomic64_set(&q->port_rate, port_rate);
 netdev_dbg(dev, "cbs: set %s's port_rate to: %lld, linkspeed: %d\n",
     dev->name, (long long)atomic64_read(&q->port_rate),
     ecmd.base.speed);
}
