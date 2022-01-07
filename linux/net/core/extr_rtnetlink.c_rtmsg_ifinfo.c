
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int gfp_t ;


 int rtmsg_ifinfo_event (int,struct net_device*,unsigned int,int ,int ,int *,int ) ;
 int rtnl_get_event (int ) ;

void rtmsg_ifinfo(int type, struct net_device *dev, unsigned int change,
    gfp_t flags)
{
 rtmsg_ifinfo_event(type, dev, change, rtnl_get_event(0), flags,
      ((void*)0), 0);
}
