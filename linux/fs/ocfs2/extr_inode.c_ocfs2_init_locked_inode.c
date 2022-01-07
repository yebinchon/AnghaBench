
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_find_inode_args {size_t fi_sysfile_type; int fi_blkno; int fi_ino; } ;
struct lock_class_key {int dummy; } ;
struct inode {int i_rwsem; int i_ino; } ;
struct TYPE_2__ {int ip_alloc_sem; int ip_blkno; } ;


 size_t GROUP_QUOTA_SYSTEM_INODE ;
 size_t LOCAL_GROUP_QUOTA_SYSTEM_INODE ;
 size_t LOCAL_USER_QUOTA_SYSTEM_INODE ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 size_t USER_QUOTA_SYSTEM_INODE ;
 int lockdep_set_class (int *,struct lock_class_key*) ;
 struct lock_class_key* ocfs2_sysfile_lock_key ;

__attribute__((used)) static int ocfs2_init_locked_inode(struct inode *inode, void *opaque)
{
 struct ocfs2_find_inode_args *args = opaque;
 static struct lock_class_key ocfs2_quota_ip_alloc_sem_key,
         ocfs2_file_ip_alloc_sem_key;

 inode->i_ino = args->fi_ino;
 OCFS2_I(inode)->ip_blkno = args->fi_blkno;
 if (args->fi_sysfile_type != 0)
  lockdep_set_class(&inode->i_rwsem,
   &ocfs2_sysfile_lock_key[args->fi_sysfile_type]);
 if (args->fi_sysfile_type == USER_QUOTA_SYSTEM_INODE ||
     args->fi_sysfile_type == GROUP_QUOTA_SYSTEM_INODE ||
     args->fi_sysfile_type == LOCAL_USER_QUOTA_SYSTEM_INODE ||
     args->fi_sysfile_type == LOCAL_GROUP_QUOTA_SYSTEM_INODE)
  lockdep_set_class(&OCFS2_I(inode)->ip_alloc_sem,
      &ocfs2_quota_ip_alloc_sem_key);
 else
  lockdep_set_class(&OCFS2_I(inode)->ip_alloc_sem,
      &ocfs2_file_ip_alloc_sem_key);

 return 0;
}
