
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_mdb_entry {int host_joined; int addr; TYPE_1__* br; } ;
struct TYPE_2__ {int dev; } ;


 int RTM_DELMDB ;
 int br_mdb_notify (int ,int *,int *,int ,int ) ;

void br_multicast_host_leave(struct net_bridge_mdb_entry *mp, bool notify)
{
 if (!mp->host_joined)
  return;

 mp->host_joined = 0;
 if (notify)
  br_mdb_notify(mp->br->dev, ((void*)0), &mp->addr, RTM_DELMDB, 0);
}
