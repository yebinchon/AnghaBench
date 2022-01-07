
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_dir_entry {TYPE_1__* parent; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {void* data; } ;


 struct proc_dir_entry* PDE (struct inode const*) ;

void *proc_get_parent_data(const struct inode *inode)
{
 struct proc_dir_entry *de = PDE(inode);
 return de->parent->data;
}
