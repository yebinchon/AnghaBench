
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int in_use; } ;


 TYPE_1__* PDE (int ) ;
 scalar_t__ atomic_read (int *) ;
 int d_inode (struct dentry const*) ;

__attribute__((used)) static int proc_misc_d_delete(const struct dentry *dentry)
{
 return atomic_read(&PDE(d_inode(dentry))->in_use) < 0;
}
