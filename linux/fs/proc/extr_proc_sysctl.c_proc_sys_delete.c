
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sysctl; } ;
struct TYPE_3__ {int unregistering; } ;


 TYPE_2__* PROC_I (int ) ;
 int d_inode (struct dentry const*) ;

__attribute__((used)) static int proc_sys_delete(const struct dentry *dentry)
{
 return !!PROC_I(d_inode(dentry))->sysctl->unregistering;
}
