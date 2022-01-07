
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_dyn_features; } ;


 int BUG_ON (int) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int PageLocked (struct page*) ;
 int brelse (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_read_inline_data (struct inode*,struct page*,struct buffer_head*) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ocfs2_readpage_inline(struct inode *inode, struct page *page)
{
 int ret;
 struct buffer_head *di_bh = ((void*)0);

 BUG_ON(!PageLocked(page));
 BUG_ON(!(OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL));

 ret = ocfs2_read_inode_block(inode, &di_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_read_inline_data(inode, page, di_bh);
out:
 unlock_page(page);

 brelse(di_bh);
 return ret;
}
