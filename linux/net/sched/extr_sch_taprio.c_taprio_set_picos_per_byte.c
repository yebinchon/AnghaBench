
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct taprio_sched {int picos_per_byte; } ;
struct net_device {int name; } ;
struct TYPE_2__ {int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int SPEED_10 ;
 int SPEED_UNKNOWN ;
 int USEC_PER_SEC ;
 int __ethtool_get_link_ksettings (struct net_device*,struct ethtool_link_ksettings*) ;
 scalar_t__ atomic64_read (int *) ;
 int atomic64_set (int *,int) ;
 int netdev_dbg (struct net_device*,char*,int ,long long,int) ;

__attribute__((used)) static void taprio_set_picos_per_byte(struct net_device *dev,
          struct taprio_sched *q)
{
 struct ethtool_link_ksettings ecmd;
 int speed = SPEED_10;
 int picos_per_byte;
 int err;

 err = __ethtool_get_link_ksettings(dev, &ecmd);
 if (err < 0)
  goto skip;

 if (ecmd.base.speed && ecmd.base.speed != SPEED_UNKNOWN)
  speed = ecmd.base.speed;

skip:
 picos_per_byte = (USEC_PER_SEC * 8) / speed;

 atomic64_set(&q->picos_per_byte, picos_per_byte);
 netdev_dbg(dev, "taprio: set %s's picos_per_byte to: %lld, linkspeed: %d\n",
     dev->name, (long long)atomic64_read(&q->picos_per_byte),
     ecmd.base.speed);
}
