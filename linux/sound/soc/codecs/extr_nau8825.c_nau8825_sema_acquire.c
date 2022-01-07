
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8825 {int dev; int xtalk_sem; } ;


 int dev_warn (int ,char*) ;
 int down_timeout (int *,long) ;
 int down_trylock (int *) ;

__attribute__((used)) static int nau8825_sema_acquire(struct nau8825 *nau8825, long timeout)
{
 int ret;

 if (timeout) {
  ret = down_timeout(&nau8825->xtalk_sem, timeout);
  if (ret < 0)
   dev_warn(nau8825->dev, "Acquire semaphore timeout\n");
 } else {
  ret = down_trylock(&nau8825->xtalk_sem);
  if (ret)
   dev_warn(nau8825->dev, "Acquire semaphore fail\n");
 }

 return ret;
}
