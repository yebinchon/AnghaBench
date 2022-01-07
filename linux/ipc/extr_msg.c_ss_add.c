
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_sender {size_t msgsz; int list; int tsk; } ;
struct msg_queue {int q_senders; } ;


 int TASK_INTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int current ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void ss_add(struct msg_queue *msq,
     struct msg_sender *mss, size_t msgsz)
{
 mss->tsk = current;
 mss->msgsz = msgsz;
 __set_current_state(TASK_INTERRUPTIBLE);
 list_add_tail(&mss->list, &msq->q_senders);
}
