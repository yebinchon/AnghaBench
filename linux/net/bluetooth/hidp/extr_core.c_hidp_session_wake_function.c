
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_entry_t ;


 int hidp_session_wq ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int hidp_session_wake_function(wait_queue_entry_t *wait,
          unsigned int mode,
          int sync, void *key)
{
 wake_up_interruptible(&hidp_session_wq);
 return 0;
}
