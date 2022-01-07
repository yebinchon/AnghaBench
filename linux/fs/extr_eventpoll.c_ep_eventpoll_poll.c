
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct eventpoll* private_data; } ;
struct eventpoll {int poll_wait; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int ep_read_events_proc ;
 int ep_scan_ready_list (struct eventpoll*,int ,int*,int,int) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t ep_eventpoll_poll(struct file *file, poll_table *wait)
{
 struct eventpoll *ep = file->private_data;
 int depth = 0;


 poll_wait(file, &ep->poll_wait, wait);





 return ep_scan_ready_list(ep, ep_read_events_proc,
      &depth, depth, 0);
}
