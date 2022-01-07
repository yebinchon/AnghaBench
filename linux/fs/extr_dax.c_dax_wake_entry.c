
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct xa_state {int dummy; } ;
struct exceptional_entry_key {int dummy; } ;


 int TASK_NORMAL ;
 int __wake_up (int *,int ,int,struct exceptional_entry_key*) ;
 int * dax_entry_waitqueue (struct xa_state*,void*,struct exceptional_entry_key*) ;
 scalar_t__ waitqueue_active (int *) ;

__attribute__((used)) static void dax_wake_entry(struct xa_state *xas, void *entry, bool wake_all)
{
 struct exceptional_entry_key key;
 wait_queue_head_t *wq;

 wq = dax_entry_waitqueue(xas, entry, &key);







 if (waitqueue_active(wq))
  __wake_up(wq, TASK_NORMAL, wake_all ? 0 : 1, &key);
}
