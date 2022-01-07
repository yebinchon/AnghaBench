
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {scalar_t__ index; TYPE_2__* mapping; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
typedef scalar_t__ pgoff_t ;
typedef int loff_t ;
struct TYPE_6__ {scalar_t__ journal_info; } ;
struct TYPE_5__ {TYPE_1__* a_ops; struct inode* host; } ;
struct TYPE_4__ {int (* invalidatepage ) (struct page*,int ,int) ;} ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 TYPE_3__* current ;
 scalar_t__ gfs2_assert_withdraw (struct gfs2_sbd*,int ) ;
 int gfs2_get_block_noalloc ;
 int gfs2_glock_is_held_excl (int ) ;
 int i_size_read (struct inode*) ;
 int nobh_writepage (struct page*,int ,struct writeback_control*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int stub1 (struct page*,int ,int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int gfs2_writepage(struct page *page, struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 loff_t i_size = i_size_read(inode);
 pgoff_t end_index = i_size >> PAGE_SHIFT;
 unsigned offset;

 if (gfs2_assert_withdraw(sdp, gfs2_glock_is_held_excl(ip->i_gl)))
  goto out;
 if (current->journal_info)
  goto redirty;

 offset = i_size & (PAGE_SIZE-1);
 if (page->index > end_index || (page->index == end_index && !offset)) {
  page->mapping->a_ops->invalidatepage(page, 0, PAGE_SIZE);
  goto out;
 }

 return nobh_writepage(page, gfs2_get_block_noalloc, wbc);

redirty:
 redirty_page_for_writepage(wbc, page);
out:
 unlock_page(page);
 return 0;
}
