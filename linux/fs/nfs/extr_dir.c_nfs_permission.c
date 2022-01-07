
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_mode; int i_ino; TYPE_1__* i_sb; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int access; } ;
struct TYPE_3__ {int s_id; } ;


 int ECHILD ;
 int MAY_ACCESS ;
 int MAY_CHDIR ;
 int MAY_EXEC ;
 int MAY_NOT_BLOCK ;
 int MAY_OPEN ;
 int MAY_READ ;
 int MAY_WRITE ;
 int NFSIOS_VFSACCESS ;
 int NFS_CAP_ATOMIC_OPEN ;
 TYPE_2__* NFS_PROTO (struct inode*) ;
 int NFS_SERVER (struct inode*) ;


 int S_IFMT ;

 int VFS ;
 struct cred* current_cred () ;
 int dfprintk (int ,char*,int ,int ,int,int) ;
 int generic_permission (struct inode*,int) ;
 int nfs_do_access (struct inode*,struct cred const*,int) ;
 int nfs_execute_ok (struct inode*,int) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_revalidate_inode (int ,struct inode*) ;
 int nfs_server_capable (struct inode*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int nfs_permission(struct inode *inode, int mask)
{
 const struct cred *cred = current_cred();
 int res = 0;

 nfs_inc_stats(inode, NFSIOS_VFSACCESS);

 if ((mask & (MAY_READ | MAY_WRITE | MAY_EXEC)) == 0)
  goto out;

 if (mask & (MAY_ACCESS | MAY_CHDIR))
  goto force_lookup;

 switch (inode->i_mode & S_IFMT) {
  case 129:
   goto out;
  case 128:
   if ((mask & MAY_OPEN) &&
      nfs_server_capable(inode, NFS_CAP_ATOMIC_OPEN))
    return 0;
   break;
  case 130:




   if ((mask & MAY_WRITE) && !(mask & MAY_READ))
    goto out;
 }

force_lookup:
 if (!NFS_PROTO(inode)->access)
  goto out_notsup;


 rcu_read_lock();
 res = nfs_do_access(inode, cred, mask|MAY_NOT_BLOCK);
 rcu_read_unlock();
 if (res == -ECHILD && !(mask & MAY_NOT_BLOCK)) {

  res = nfs_do_access(inode, cred, mask);
 }
out:
 if (!res && (mask & MAY_EXEC))
  res = nfs_execute_ok(inode, mask);

 dfprintk(VFS, "NFS: permission(%s/%lu), mask=0x%x, res=%d\n",
  inode->i_sb->s_id, inode->i_ino, mask, res);
 return res;
out_notsup:
 if (mask & MAY_NOT_BLOCK)
  return -ECHILD;

 res = nfs_revalidate_inode(NFS_SERVER(inode), inode);
 if (res == 0)
  res = generic_permission(inode, mask);
 goto out;
}
