
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_queue_entry {int entry; } ;


 int default_wake_function (struct wait_queue_entry*,unsigned int,int,void*) ;
 int list_del_init (int *) ;

int autoremove_wake_function(struct wait_queue_entry *wq_entry, unsigned mode, int sync, void *key)
{
 int ret = default_wake_function(wq_entry, mode, sync, key);

 if (ret)
  list_del_init(&wq_entry->entry);

 return ret;
}
