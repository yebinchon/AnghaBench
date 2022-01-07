
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int * l_name; } ;
typedef int __u64 ;
typedef int __be64 ;


 size_t OCFS2_DENTRY_LOCK_INO_START ;
 int be64_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static __u64 ocfs2_get_dentry_lock_ino(struct ocfs2_lock_res *lockres)
{
 __be64 inode_blkno_be;

 memcpy(&inode_blkno_be, &lockres->l_name[OCFS2_DENTRY_LOCK_INO_START],
        sizeof(__be64));

 return be64_to_cpu(inode_blkno_be);
}
