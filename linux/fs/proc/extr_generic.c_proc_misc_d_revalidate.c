
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int in_use; } ;


 int ECHILD ;
 unsigned int LOOKUP_RCU ;
 TYPE_1__* PDE (int ) ;
 scalar_t__ atomic_read (int *) ;
 int d_inode (struct dentry*) ;

__attribute__((used)) static int proc_misc_d_revalidate(struct dentry *dentry, unsigned int flags)
{
 if (flags & LOOKUP_RCU)
  return -ECHILD;

 if (atomic_read(&PDE(d_inode(dentry))->in_use) < 0)
  return 0;
 return 1;
}
