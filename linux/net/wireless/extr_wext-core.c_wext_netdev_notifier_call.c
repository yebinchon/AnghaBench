
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 int wireless_nlevent_flush () ;

__attribute__((used)) static int wext_netdev_notifier_call(struct notifier_block *nb,
         unsigned long state, void *ptr)
{







 wireless_nlevent_flush();

 return NOTIFY_OK;
}
