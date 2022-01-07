
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dir_lookup_result {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;


 int ENOSPC ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int __ocfs2_prepare_orphan_dir (struct inode*,struct buffer_head*,int ,char*,struct ocfs2_dir_lookup_result*,int) ;
 int brelse (struct buffer_head*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_find_new_inode_loc (struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,int *) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_lookup_lock_orphan_dir (struct ocfs2_super*,struct inode**,struct buffer_head**) ;
 int ocfs2_reserve_new_inode (struct ocfs2_super*,struct ocfs2_alloc_context**) ;

__attribute__((used)) static int ocfs2_prep_new_orphaned_file(struct inode *dir,
     struct buffer_head *dir_bh,
     char *orphan_name,
     struct inode **ret_orphan_dir,
     u64 *ret_di_blkno,
     struct ocfs2_dir_lookup_result *orphan_insert,
     struct ocfs2_alloc_context **ret_inode_ac)
{
 int ret;
 u64 di_blkno;
 struct ocfs2_super *osb = OCFS2_SB(dir->i_sb);
 struct inode *orphan_dir = ((void*)0);
 struct buffer_head *orphan_dir_bh = ((void*)0);
 struct ocfs2_alloc_context *inode_ac = ((void*)0);

 ret = ocfs2_lookup_lock_orphan_dir(osb, &orphan_dir, &orphan_dir_bh);
 if (ret < 0) {
  mlog_errno(ret);
  return ret;
 }


 ret = ocfs2_reserve_new_inode(osb, &inode_ac);
 if (ret < 0) {
  if (ret != -ENOSPC)
   mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_find_new_inode_loc(dir, dir_bh, inode_ac,
           &di_blkno);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = __ocfs2_prepare_orphan_dir(orphan_dir, orphan_dir_bh,
      di_blkno, orphan_name, orphan_insert,
      0);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

out:
 if (ret == 0) {
  *ret_orphan_dir = orphan_dir;
  *ret_di_blkno = di_blkno;
  *ret_inode_ac = inode_ac;




 } else {

  if (inode_ac)
   ocfs2_free_alloc_context(inode_ac);


  inode_unlock(orphan_dir);
  ocfs2_inode_unlock(orphan_dir, 1);
  iput(orphan_dir);
 }

 brelse(orphan_dir_bh);

 return ret;
}
