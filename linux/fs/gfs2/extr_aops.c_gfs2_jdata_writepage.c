
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct TYPE_4__ {scalar_t__ journal_info; } ;
struct TYPE_3__ {struct inode* host; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 scalar_t__ PageChecked (struct page*) ;
 int __gfs2_jdata_writepage (struct page*,struct writeback_control*) ;
 TYPE_2__* current ;
 scalar_t__ gfs2_assert_withdraw (struct gfs2_sbd*,int ) ;
 int gfs2_glock_is_held_excl (int ) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int gfs2_jdata_writepage(struct page *page, struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 int ret;

 if (gfs2_assert_withdraw(sdp, gfs2_glock_is_held_excl(ip->i_gl)))
  goto out;
 if (PageChecked(page) || current->journal_info)
  goto out_ignore;
 ret = __gfs2_jdata_writepage(page, wbc);
 return ret;

out_ignore:
 redirty_page_for_writepage(wbc, page);
out:
 unlock_page(page);
 return 0;
}
