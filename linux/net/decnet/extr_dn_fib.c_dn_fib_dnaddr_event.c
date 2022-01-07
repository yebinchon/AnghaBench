
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct dn_ifaddr {TYPE_1__* ifa_dev; } ;
struct TYPE_2__ {int dev; int * ifa_list; } ;




 int NOTIFY_DONE ;
 int dn_fib_add_ifaddr (struct dn_ifaddr*) ;
 int dn_fib_del_ifaddr (struct dn_ifaddr*) ;
 int dn_fib_disable_addr (int ,int) ;
 int dn_fib_sync_up (int ) ;
 int dn_rt_cache_flush (int) ;

__attribute__((used)) static int dn_fib_dnaddr_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct dn_ifaddr *ifa = (struct dn_ifaddr *)ptr;

 switch (event) {
 case 128:
  dn_fib_add_ifaddr(ifa);
  dn_fib_sync_up(ifa->ifa_dev->dev);
  dn_rt_cache_flush(-1);
  break;
 case 129:
  dn_fib_del_ifaddr(ifa);
  if (ifa->ifa_dev && ifa->ifa_dev->ifa_list == ((void*)0)) {
   dn_fib_disable_addr(ifa->ifa_dev->dev, 1);
  } else {
   dn_rt_cache_flush(-1);
  }
  break;
 }
 return NOTIFY_DONE;
}
