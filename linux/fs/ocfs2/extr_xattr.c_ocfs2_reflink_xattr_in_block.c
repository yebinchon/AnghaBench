
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_reflink {int new_bh; int new_inode; } ;
struct ocfs2_xattr_block {int xb_flags; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int OCFS2_XATTR_INDEXED ;
 int brelse (struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_create_empty_xattr_block (int ,int ,struct buffer_head**,int) ;
 int ocfs2_reflink_xattr_block (struct ocfs2_xattr_reflink*,struct buffer_head*,struct buffer_head*) ;
 int ocfs2_reflink_xattr_tree (struct ocfs2_xattr_reflink*,struct buffer_head*,struct buffer_head*) ;

__attribute__((used)) static int ocfs2_reflink_xattr_in_block(struct ocfs2_xattr_reflink *args,
     struct buffer_head *blk_bh)
{
 int ret, indexed = 0;
 struct buffer_head *new_blk_bh = ((void*)0);
 struct ocfs2_xattr_block *xb =
   (struct ocfs2_xattr_block *)blk_bh->b_data;


 if (le16_to_cpu(xb->xb_flags) & OCFS2_XATTR_INDEXED)
  indexed = 1;

 ret = ocfs2_create_empty_xattr_block(args->new_inode, args->new_bh,
          &new_blk_bh, indexed);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 if (!indexed)
  ret = ocfs2_reflink_xattr_block(args, blk_bh, new_blk_bh);
 else
  ret = ocfs2_reflink_xattr_tree(args, blk_bh, new_blk_bh);
 if (ret)
  mlog_errno(ret);

out:
 brelse(new_blk_bh);
 return ret;
}
