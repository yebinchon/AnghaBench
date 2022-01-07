
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int private_data; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {scalar_t__ poll; } ;
struct TYPE_2__ {struct ctl_table* sysctl_entry; } ;


 scalar_t__ IS_ERR (struct ctl_table_header*) ;
 TYPE_1__* PROC_I (struct inode*) ;
 int PTR_ERR (struct ctl_table_header*) ;
 struct ctl_table_header* grab_header (struct inode*) ;
 int proc_sys_poll_event (scalar_t__) ;
 int sysctl_head_finish (struct ctl_table_header*) ;

__attribute__((used)) static int proc_sys_open(struct inode *inode, struct file *filp)
{
 struct ctl_table_header *head = grab_header(inode);
 struct ctl_table *table = PROC_I(inode)->sysctl_entry;


 if (IS_ERR(head))
  return PTR_ERR(head);

 if (table->poll)
  filp->private_data = proc_sys_poll_event(table->poll);

 sysctl_head_finish(head);

 return 0;
}
