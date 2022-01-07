
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int EPOLLIN ;
 int wake_up_poll (int *,int ) ;

__attribute__((used)) static void ep_poll_safewake(wait_queue_head_t *wq)
{
 wake_up_poll(wq, EPOLLIN);
}
