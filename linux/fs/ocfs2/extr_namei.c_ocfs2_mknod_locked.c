
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_alloc_context {int ac_bh; int ac_inode; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
typedef int dev_t ;


 int __ocfs2_mknod_locked (struct inode*,struct inode*,int ,struct buffer_head**,struct buffer_head*,int *,struct ocfs2_alloc_context*,int ,int ,int ) ;
 int mlog_errno (int) ;
 int ocfs2_claim_new_inode (int *,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,int *,int *,int *) ;
 int ocfs2_free_suballoc_bits (int *,int ,int ,int ,int ,int) ;
 int ocfs2_which_suballoc_group (int ,int ) ;

__attribute__((used)) static int ocfs2_mknod_locked(struct ocfs2_super *osb,
         struct inode *dir,
         struct inode *inode,
         dev_t dev,
         struct buffer_head **new_fe_bh,
         struct buffer_head *parent_fe_bh,
         handle_t *handle,
         struct ocfs2_alloc_context *inode_ac)
{
 int status = 0;
 u64 suballoc_loc, fe_blkno = 0;
 u16 suballoc_bit;

 *new_fe_bh = ((void*)0);

 status = ocfs2_claim_new_inode(handle, dir, parent_fe_bh,
           inode_ac, &suballoc_loc,
           &suballoc_bit, &fe_blkno);
 if (status < 0) {
  mlog_errno(status);
  return status;
 }

 status = __ocfs2_mknod_locked(dir, inode, dev, new_fe_bh,
        parent_fe_bh, handle, inode_ac,
        fe_blkno, suballoc_loc, suballoc_bit);
 if (status < 0) {
  u64 bg_blkno = ocfs2_which_suballoc_group(fe_blkno, suballoc_bit);
  int tmp = ocfs2_free_suballoc_bits(handle, inode_ac->ac_inode,
    inode_ac->ac_bh, suballoc_bit, bg_blkno, 1);
  if (tmp)
   mlog_errno(tmp);
 }

 return status;
}
