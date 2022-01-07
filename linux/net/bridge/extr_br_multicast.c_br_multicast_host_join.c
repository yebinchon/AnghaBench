
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_mdb_entry {int host_joined; TYPE_1__* br; int timer; int addr; } ;
struct TYPE_2__ {scalar_t__ multicast_membership_interval; int dev; } ;


 int RTM_NEWMDB ;
 int br_mdb_notify (int ,int *,int *,int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void br_multicast_host_join(struct net_bridge_mdb_entry *mp, bool notify)
{
 if (!mp->host_joined) {
  mp->host_joined = 1;
  if (notify)
   br_mdb_notify(mp->br->dev, ((void*)0), &mp->addr,
          RTM_NEWMDB, 0);
 }
 mod_timer(&mp->timer, jiffies + mp->br->multicast_membership_interval);
}
