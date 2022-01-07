
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file_lock {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_6__ {int (* lock ) (struct file*,int,struct file_lock*) ;int (* have_delegation ) (struct inode*,int ) ;} ;
struct TYPE_5__ {struct inode* host; } ;


 int FMODE_READ ;
 TYPE_4__* NFS_PROTO (struct inode*) ;
 int locks_lock_file_wait (struct file*,struct file_lock*) ;
 scalar_t__ mapping_mapped (TYPE_1__*) ;
 int nfs_revalidate_mapping (struct inode*,TYPE_1__*) ;
 int nfs_sync_mapping (TYPE_1__*) ;
 int nfs_zap_caches (struct inode*) ;
 int stub1 (struct file*,int,struct file_lock*) ;
 int stub2 (struct inode*,int ) ;

__attribute__((used)) static int
do_setlk(struct file *filp, int cmd, struct file_lock *fl, int is_local)
{
 struct inode *inode = filp->f_mapping->host;
 int status;





 status = nfs_sync_mapping(filp->f_mapping);
 if (status != 0)
  goto out;





 if (!is_local)
  status = NFS_PROTO(inode)->lock(filp, cmd, fl);
 else
  status = locks_lock_file_wait(filp, fl);
 if (status < 0)
  goto out;
 nfs_sync_mapping(filp->f_mapping);
 if (!NFS_PROTO(inode)->have_delegation(inode, FMODE_READ)) {
  nfs_zap_caches(inode);
  if (mapping_mapped(filp->f_mapping))
   nfs_revalidate_mapping(inode, filp->f_mapping);
 }
out:
 return status;
}
