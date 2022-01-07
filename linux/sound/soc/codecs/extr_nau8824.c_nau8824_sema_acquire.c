
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8824 {int dev; int jd_sem; } ;


 int dev_warn (int ,char*) ;
 int down_interruptible (int *) ;
 int down_timeout (int *,long) ;

__attribute__((used)) static int nau8824_sema_acquire(struct nau8824 *nau8824, long timeout)
{
 int ret;

 if (timeout) {
  ret = down_timeout(&nau8824->jd_sem, timeout);
  if (ret < 0)
   dev_warn(nau8824->dev, "Acquire semaphore timeout\n");
 } else {
  ret = down_interruptible(&nau8824->jd_sem);
  if (ret < 0)
   dev_warn(nau8824->dev, "Acquire semaphore fail\n");
 }

 return ret;
}
