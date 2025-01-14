
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {TYPE_1__* poll; int proc_handler; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_4__ {struct ctl_table* sysctl_entry; } ;
struct TYPE_3__ {int event; int wait; } ;


 int DEFAULT_POLLMASK ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLPRI ;
 int EPOLLRDNORM ;
 scalar_t__ IS_ERR (struct ctl_table_header*) ;
 TYPE_2__* PROC_I (struct inode*) ;
 unsigned long atomic_read (int *) ;
 struct inode* file_inode (struct file*) ;
 struct ctl_table_header* grab_header (struct inode*) ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ proc_sys_poll_event (TYPE_1__*) ;
 int sysctl_head_finish (struct ctl_table_header*) ;

__attribute__((used)) static __poll_t proc_sys_poll(struct file *filp, poll_table *wait)
{
 struct inode *inode = file_inode(filp);
 struct ctl_table_header *head = grab_header(inode);
 struct ctl_table *table = PROC_I(inode)->sysctl_entry;
 __poll_t ret = DEFAULT_POLLMASK;
 unsigned long event;


 if (IS_ERR(head))
  return EPOLLERR | EPOLLHUP;

 if (!table->proc_handler)
  goto out;

 if (!table->poll)
  goto out;

 event = (unsigned long)filp->private_data;
 poll_wait(filp, &table->poll->wait, wait);

 if (event != atomic_read(&table->poll->event)) {
  filp->private_data = proc_sys_poll_event(table->poll);
  ret = EPOLLIN | EPOLLRDNORM | EPOLLERR | EPOLLPRI;
 }

out:
 sysctl_head_finish(head);

 return ret;
}
