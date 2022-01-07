
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int list_empty (int *) ;
 int orangefs_request_list ;
 int orangefs_request_list_waitq ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t orangefs_devreq_poll(struct file *file,
          struct poll_table_struct *poll_table)
{
 __poll_t poll_revent_mask = 0;

 poll_wait(file, &orangefs_request_list_waitq, poll_table);

 if (!list_empty(&orangefs_request_list))
  poll_revent_mask |= EPOLLIN;
 return poll_revent_mask;
}
