
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_entry_t ;
struct snd_ymfpci {int interrupt_sleep; int interrupt_sleep_count; } ;


 int YDSXGR_MODE ;
 int add_wait_queue (int *,int *) ;
 int atomic_inc (int *) ;
 int current ;
 int init_waitqueue_entry (int *,int ) ;
 int msecs_to_jiffies (int) ;
 int remove_wait_queue (int *,int *) ;
 int schedule_timeout_uninterruptible (int ) ;
 int snd_ymfpci_readl (struct snd_ymfpci*,int ) ;

__attribute__((used)) static void snd_ymfpci_irq_wait(struct snd_ymfpci *chip)
{
 wait_queue_entry_t wait;
 int loops = 4;

 while (loops-- > 0) {
  if ((snd_ymfpci_readl(chip, YDSXGR_MODE) & 3) == 0)
    continue;
  init_waitqueue_entry(&wait, current);
  add_wait_queue(&chip->interrupt_sleep, &wait);
  atomic_inc(&chip->interrupt_sleep_count);
  schedule_timeout_uninterruptible(msecs_to_jiffies(50));
  remove_wait_queue(&chip->interrupt_sleep, &wait);
 }
}
