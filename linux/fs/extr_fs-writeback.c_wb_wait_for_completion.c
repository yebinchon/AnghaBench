
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_completion {int cnt; int * waitq; } ;


 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int wait_event (int ,int) ;

void wb_wait_for_completion(struct wb_completion *done)
{
 atomic_dec(&done->cnt);
 wait_event(*done->waitq, !atomic_read(&done->cnt));
}
