
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usX2Ydev {int chip_status; int us428ctls_wait_queue_head; struct us428ctls_sharedmem* us428ctls_sharedmem; } ;
struct us428ctls_sharedmem {scalar_t__ CtlSnapShotLast; scalar_t__ CtlSnapShotRed; } ;
struct snd_hwdep {struct usX2Ydev* private_data; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLHUP ;
 int EPOLLIN ;
 int USX2Y_STAT_CHIP_HUP ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t snd_us428ctls_poll(struct snd_hwdep *hw, struct file *file, poll_table *wait)
{
 __poll_t mask = 0;
 struct usX2Ydev *us428 = hw->private_data;
 struct us428ctls_sharedmem *shm = us428->us428ctls_sharedmem;
 if (us428->chip_status & USX2Y_STAT_CHIP_HUP)
  return EPOLLHUP;

 poll_wait(file, &us428->us428ctls_wait_queue_head, wait);

 if (shm != ((void*)0) && shm->CtlSnapShotLast != shm->CtlSnapShotRed)
  mask |= EPOLLIN;

 return mask;
}
