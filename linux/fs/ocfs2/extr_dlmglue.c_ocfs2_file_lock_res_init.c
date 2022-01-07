
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_lock_res {int l_flags; int l_name; } ;
struct ocfs2_inode_info {int ip_blkno; } ;
struct ocfs2_file_private {TYPE_2__* fp_file; } ;
struct inode {int i_sb; int i_generation; } ;
struct TYPE_4__ {TYPE_1__* f_mapping; } ;
struct TYPE_3__ {struct inode* host; } ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_LOCK_NOCACHE ;
 int OCFS2_LOCK_TYPE_FLOCK ;
 int OCFS2_SB (int ) ;
 int ocfs2_build_lock_name (int ,int ,int ,int ) ;
 int ocfs2_flock_lops ;
 int ocfs2_lock_res_init_common (int ,struct ocfs2_lock_res*,int ,int *,struct ocfs2_file_private*) ;
 int ocfs2_lock_res_init_once (struct ocfs2_lock_res*) ;

void ocfs2_file_lock_res_init(struct ocfs2_lock_res *lockres,
         struct ocfs2_file_private *fp)
{
 struct inode *inode = fp->fp_file->f_mapping->host;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);

 ocfs2_lock_res_init_once(lockres);
 ocfs2_build_lock_name(OCFS2_LOCK_TYPE_FLOCK, oi->ip_blkno,
         inode->i_generation, lockres->l_name);
 ocfs2_lock_res_init_common(OCFS2_SB(inode->i_sb), lockres,
       OCFS2_LOCK_TYPE_FLOCK, &ocfs2_flock_lops,
       fp);
 lockres->l_flags |= OCFS2_LOCK_NOCACHE;
}
