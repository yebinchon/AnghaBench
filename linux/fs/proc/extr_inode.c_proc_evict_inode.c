
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_dir_entry {int dummy; } ;
struct inode {int i_data; } ;
struct ctl_table_header {int dummy; } ;
struct TYPE_2__ {struct ctl_table_header* sysctl; int pid; } ;


 struct proc_dir_entry* PDE (struct inode*) ;
 TYPE_1__* PROC_I (struct inode*) ;
 int RCU_INIT_POINTER (struct ctl_table_header*,int *) ;
 int clear_inode (struct inode*) ;
 int pde_put (struct proc_dir_entry*) ;
 int proc_sys_evict_inode (struct inode*,struct ctl_table_header*) ;
 int put_pid (int ) ;
 int truncate_inode_pages_final (int *) ;

__attribute__((used)) static void proc_evict_inode(struct inode *inode)
{
 struct proc_dir_entry *de;
 struct ctl_table_header *head;

 truncate_inode_pages_final(&inode->i_data);
 clear_inode(inode);


 put_pid(PROC_I(inode)->pid);


 de = PDE(inode);
 if (de)
  pde_put(de);

 head = PROC_I(inode)->sysctl;
 if (head) {
  RCU_INIT_POINTER(PROC_I(inode)->sysctl, ((void*)0));
  proc_sys_evict_inode(inode, head);
 }
}
