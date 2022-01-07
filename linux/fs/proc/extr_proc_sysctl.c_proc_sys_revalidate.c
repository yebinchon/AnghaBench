
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sysctl; } ;
struct TYPE_3__ {int unregistering; } ;


 int ECHILD ;
 unsigned int LOOKUP_RCU ;
 TYPE_2__* PROC_I (int ) ;
 int d_inode (struct dentry*) ;

__attribute__((used)) static int proc_sys_revalidate(struct dentry *dentry, unsigned int flags)
{
 if (flags & LOOKUP_RCU)
  return -ECHILD;
 return !PROC_I(d_inode(dentry))->sysctl->unregistering;
}
