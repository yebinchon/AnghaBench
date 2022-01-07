
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mixart_mgr {TYPE_1__* pci; int msg_processed; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 unsigned long HZ ;
 scalar_t__ atomic_read (int *) ;
 int dev_err (int *,char*) ;
 unsigned long jiffies ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int mixart_sync_nonblock_events(struct mixart_mgr *mgr)
{
 unsigned long timeout = jiffies + HZ;
 while (atomic_read(&mgr->msg_processed) > 0) {
  if (time_after(jiffies, timeout)) {
   dev_err(&mgr->pci->dev,
    "mixart: cannot process nonblock events!\n");
   return -EBUSY;
  }
  schedule_timeout_uninterruptible(1);
 }
 return 0;
}
