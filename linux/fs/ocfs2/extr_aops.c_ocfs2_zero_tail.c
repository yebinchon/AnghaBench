
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ loff_t ;


 int BUG_ON (int) ;
 int OCFS2_SB (int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int ocfs2_sparse_alloc (int ) ;
 int ocfs2_zero_extend (struct inode*,struct buffer_head*,scalar_t__) ;

__attribute__((used)) static int ocfs2_zero_tail(struct inode *inode, struct buffer_head *di_bh,
      loff_t pos)
{
 int ret = 0;

 BUG_ON(!ocfs2_sparse_alloc(OCFS2_SB(inode->i_sb)));
 if (pos > i_size_read(inode))
  ret = ocfs2_zero_extend(inode, di_bh, pos);

 return ret;
}
