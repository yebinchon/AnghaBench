
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_queue_entry {int flags; int entry; int func; int private; } ;


 int INIT_LIST_HEAD (int *) ;
 int autoremove_wake_function ;
 int current ;

void init_wait_entry(struct wait_queue_entry *wq_entry, int flags)
{
 wq_entry->flags = flags;
 wq_entry->private = current;
 wq_entry->func = autoremove_wake_function;
 INIT_LIST_HEAD(&wq_entry->entry);
}
