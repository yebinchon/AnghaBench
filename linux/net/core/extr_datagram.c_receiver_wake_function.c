
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_entry_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int autoremove_wake_function (int *,unsigned int,int,void*) ;
 int key_to_poll (void*) ;

__attribute__((used)) static int receiver_wake_function(wait_queue_entry_t *wait, unsigned int mode, int sync,
      void *key)
{



 if (key && !(key_to_poll(key) & (EPOLLIN | EPOLLERR)))
  return 0;
 return autoremove_wake_function(wait, mode, sync, key);
}
