
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file_lock {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int nlm_host; } ;


 TYPE_1__* NFS_SERVER (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int nlmclnt_proc (int ,int,struct file_lock*,int *) ;

__attribute__((used)) static int
nfs_proc_lock(struct file *filp, int cmd, struct file_lock *fl)
{
 struct inode *inode = file_inode(filp);

 return nlmclnt_proc(NFS_SERVER(inode)->nlm_host, cmd, fl, ((void*)0));
}
