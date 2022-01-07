
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct sighand_struct {int signalfd_wqh; } ;


 int EPOLLHUP ;
 int POLLFREE ;
 scalar_t__ likely (int) ;
 int waitqueue_active (int *) ;
 int wake_up_poll (int *,int) ;

void signalfd_cleanup(struct sighand_struct *sighand)
{
 wait_queue_head_t *wqh = &sighand->signalfd_wqh;





 if (likely(!waitqueue_active(wqh)))
  return;


 wake_up_poll(wqh, EPOLLHUP | POLLFREE);
}
