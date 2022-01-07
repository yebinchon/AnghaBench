
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int mr_lock; } ;
struct TYPE_6__ {int di_size; int di_gid; int di_uid; } ;
struct inode {int i_mapping; TYPE_3__* i_sb; int i_rwsem; int i_mode; int i_gid; int i_uid; int i_state; int i_ino; } ;
struct xfs_inode {TYPE_5__ i_lock; TYPE_4__* i_mount; int d_ops; TYPE_1__ i_d; int i_ino; struct inode i_vnode; } ;
typedef int gfp_t ;
struct TYPE_9__ {int m_nondir_inode_ops; int m_dir_inode_ops; } ;
struct TYPE_8__ {TYPE_2__* s_type; } ;
struct TYPE_7__ {int i_mutex_dir_key; } ;


 int I_NEW ;
 scalar_t__ S_ISDIR (int ) ;
 int XFS_IFORK_Q (struct xfs_inode*) ;
 int __GFP_FS ;
 int cache_no_acl (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int inode_fake_hash (struct inode*) ;
 int inode_has_no_xattr (struct inode*) ;
 int inode_sb_list_add (struct inode*) ;
 int lockdep_set_class (int *,int *) ;
 int mapping_gfp_mask (int ) ;
 int mapping_set_gfp_mask (int ,int) ;
 int xfs_diflags_to_iflags (struct inode*,struct xfs_inode*) ;
 int xfs_dir_ilock_class ;
 int xfs_gid_to_kgid (int ) ;
 int xfs_nondir_ilock_class ;
 int xfs_uid_to_kuid (int ) ;

void
xfs_setup_inode(
 struct xfs_inode *ip)
{
 struct inode *inode = &ip->i_vnode;
 gfp_t gfp_mask;

 inode->i_ino = ip->i_ino;
 inode->i_state = I_NEW;

 inode_sb_list_add(inode);

 inode_fake_hash(inode);

 inode->i_uid = xfs_uid_to_kuid(ip->i_d.di_uid);
 inode->i_gid = xfs_gid_to_kgid(ip->i_d.di_gid);

 i_size_write(inode, ip->i_d.di_size);
 xfs_diflags_to_iflags(inode, ip);

 if (S_ISDIR(inode->i_mode)) {






  lockdep_set_class(&inode->i_rwsem,
      &inode->i_sb->s_type->i_mutex_dir_key);
  lockdep_set_class(&ip->i_lock.mr_lock, &xfs_dir_ilock_class);
  ip->d_ops = ip->i_mount->m_dir_inode_ops;
 } else {
  ip->d_ops = ip->i_mount->m_nondir_inode_ops;
  lockdep_set_class(&ip->i_lock.mr_lock, &xfs_nondir_ilock_class);
 }






 gfp_mask = mapping_gfp_mask(inode->i_mapping);
 mapping_set_gfp_mask(inode->i_mapping, (gfp_mask & ~(__GFP_FS)));





 if (!XFS_IFORK_Q(ip)) {
  inode_has_no_xattr(inode);
  cache_no_acl(inode);
 }
}
