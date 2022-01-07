
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct eventpoll {int poll_wait; } ;
struct TYPE_11__ {int events; } ;
struct TYPE_10__ {TYPE_4__* file; } ;
struct epitem {TYPE_2__ event; TYPE_1__ ffd; } ;
struct TYPE_12__ {int _key; scalar_t__ _qproc; } ;
typedef TYPE_3__ poll_table ;
typedef int __poll_t ;
struct TYPE_13__ {struct eventpoll* private_data; } ;


 scalar_t__ ep_ptable_queue_proc ;
 int ep_read_events_proc ;
 int ep_scan_ready_list (struct eventpoll*,int ,int*,int,int) ;
 int is_file_epoll (TYPE_4__*) ;
 int poll_wait (TYPE_4__*,int *,TYPE_3__*) ;
 int vfs_poll (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static __poll_t ep_item_poll(const struct epitem *epi, poll_table *pt,
     int depth)
{
 struct eventpoll *ep;
 bool locked;

 pt->_key = epi->event.events;
 if (!is_file_epoll(epi->ffd.file))
  return vfs_poll(epi->ffd.file, pt) & epi->event.events;

 ep = epi->ffd.file->private_data;
 poll_wait(epi->ffd.file, &ep->poll_wait, pt);
 locked = pt && (pt->_qproc == ep_ptable_queue_proc);

 return ep_scan_ready_list(epi->ffd.file->private_data,
      ep_read_events_proc, &depth, depth,
      locked) & epi->event.events;
}
