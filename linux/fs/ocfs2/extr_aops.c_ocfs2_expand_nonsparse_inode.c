
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_write_ctxt {int w_first_new_cpos; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef unsigned int loff_t ;


 int BUG_ON (int ) ;
 int OCFS2_SB (int ) ;
 unsigned int i_size_read (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_clusters_for_bytes (int ,unsigned int) ;
 int ocfs2_extend_no_holes (struct inode*,struct buffer_head*,unsigned int,unsigned int) ;
 int ocfs2_sparse_alloc (int ) ;

__attribute__((used)) static int ocfs2_expand_nonsparse_inode(struct inode *inode,
     struct buffer_head *di_bh,
     loff_t pos, unsigned len,
     struct ocfs2_write_ctxt *wc)
{
 int ret;
 loff_t newsize = pos + len;

 BUG_ON(ocfs2_sparse_alloc(OCFS2_SB(inode->i_sb)));

 if (newsize <= i_size_read(inode))
  return 0;

 ret = ocfs2_extend_no_holes(inode, di_bh, newsize, pos);
 if (ret)
  mlog_errno(ret);


 if (wc)
  wc->w_first_new_cpos =
   ocfs2_clusters_for_bytes(inode->i_sb, i_size_read(inode));

 return ret;
}
