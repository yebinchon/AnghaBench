
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_entry_t ;
typedef int u32 ;
struct mixart_msg {int dummy; } ;
struct mixart_mgr {TYPE_1__* pci; int msg_sleep; int msg_lock; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 int MSG_CANCEL_NOTIFY_MASK ;
 int MSG_DEFAULT_SIZE ;
 int MSG_TIMEOUT_JIFFIES ;
 int MSG_TYPE_MASK ;
 int MSG_TYPE_NOTIFY ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int dev_err (int *,char*,int) ;
 int init_waitqueue_entry (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_wait_queue (int *,int *) ;
 long schedule_timeout (int ) ;
 int send_msg (struct mixart_mgr*,struct mixart_msg*,int ,int,int*) ;
 int set_current_state (int ) ;
 scalar_t__ snd_BUG_ON (int) ;

int snd_mixart_send_msg_wait_notif(struct mixart_mgr *mgr,
       struct mixart_msg *request, u32 notif_event)
{
 int err;
 wait_queue_entry_t wait;
 long timeout;

 if (snd_BUG_ON(!notif_event))
  return -EINVAL;
 if (snd_BUG_ON((notif_event & MSG_TYPE_MASK) != MSG_TYPE_NOTIFY))
  return -EINVAL;
 if (snd_BUG_ON(notif_event & MSG_CANCEL_NOTIFY_MASK))
  return -EINVAL;

 init_waitqueue_entry(&wait, current);

 mutex_lock(&mgr->msg_lock);

 err = send_msg(mgr, request, MSG_DEFAULT_SIZE, 1, &notif_event);
 if(err) {
  mutex_unlock(&mgr->msg_lock);
  return err;
 }

 set_current_state(TASK_UNINTERRUPTIBLE);
 add_wait_queue(&mgr->msg_sleep, &wait);
 mutex_unlock(&mgr->msg_lock);
 timeout = schedule_timeout(MSG_TIMEOUT_JIFFIES);
 remove_wait_queue(&mgr->msg_sleep, &wait);

 if (! timeout) {

  dev_err(&mgr->pci->dev,
   "error: notification %x not received\n", notif_event);
  return -EIO;
 }

 return 0;
}
