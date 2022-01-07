
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {TYPE_3__* ieee80211_ptr; TYPE_4__* wireless_handlers; } ;
struct iw_statistics {int dummy; } ;
struct TYPE_8__ {struct iw_statistics* (* get_wireless_stats ) (struct net_device*) ;} ;
struct TYPE_7__ {TYPE_2__* wiphy; } ;
struct TYPE_6__ {TYPE_1__* wext; } ;
struct TYPE_5__ {struct iw_statistics* (* get_wireless_stats ) (struct net_device*) ;} ;


 struct iw_statistics* stub1 (struct net_device*) ;
 struct iw_statistics* stub2 (struct net_device*) ;

struct iw_statistics *get_wireless_stats(struct net_device *dev)
{
 return ((void*)0);
}
