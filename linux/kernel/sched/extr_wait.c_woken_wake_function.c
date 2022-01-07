
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_queue_entry {int flags; } ;


 int WQ_FLAG_WOKEN ;
 int default_wake_function (struct wait_queue_entry*,unsigned int,int,void*) ;
 int smp_mb () ;

int woken_wake_function(struct wait_queue_entry *wq_entry, unsigned mode, int sync, void *key)
{

 smp_mb();
 wq_entry->flags |= WQ_FLAG_WOKEN;

 return default_wake_function(wq_entry, mode, sync, key);
}
