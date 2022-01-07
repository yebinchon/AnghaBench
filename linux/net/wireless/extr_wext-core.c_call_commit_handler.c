
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* wireless_handlers; } ;
struct TYPE_2__ {int (* standard ) (struct net_device*,int *,int *,int *) ;} ;


 scalar_t__ netif_running (struct net_device*) ;
 int stub1 (struct net_device*,int *,int *,int *) ;

int call_commit_handler(struct net_device *dev)
{
 return 0;

}
