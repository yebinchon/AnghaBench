
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dev; struct TYPE_6__* next; } ;
typedef TYPE_2__ ax25_dev ;
typedef int ax25_address ;
struct TYPE_5__ {scalar_t__ dev_addr; } ;


 TYPE_2__* ax25_dev_list ;
 int ax25_dev_lock ;
 scalar_t__ ax25cmp (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

ax25_dev *ax25_addr_ax25dev(ax25_address *addr)
{
 ax25_dev *ax25_dev, *res = ((void*)0);

 spin_lock_bh(&ax25_dev_lock);
 for (ax25_dev = ax25_dev_list; ax25_dev != ((void*)0); ax25_dev = ax25_dev->next)
  if (ax25cmp(addr, (ax25_address *)ax25_dev->dev->dev_addr) == 0) {
   res = ax25_dev;
  }
 spin_unlock_bh(&ax25_dev_lock);

 return res;
}
