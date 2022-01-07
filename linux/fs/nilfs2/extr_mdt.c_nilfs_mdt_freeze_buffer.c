
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct nilfs_shadow_map {int frozen_buffers; int frozen_data; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {int b_assoc_buffers; TYPE_1__* b_page; } ;
struct TYPE_4__ {struct nilfs_shadow_map* mi_shadow; } ;
struct TYPE_3__ {int index; } ;


 int ENOMEM ;
 TYPE_2__* NILFS_MDT (struct inode*) ;
 int bh_offset (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int create_empty_buffers (struct page*,int,int ) ;
 struct page* grab_cache_page (int *,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int nilfs_copy_buffer (struct buffer_head*,struct buffer_head*) ;
 struct buffer_head* nilfs_page_get_nth_block (struct page*,int) ;
 int page_has_buffers (struct page*) ;
 int put_page (struct page*) ;
 int set_buffer_nilfs_redirected (struct buffer_head*) ;
 int unlock_page (struct page*) ;

int nilfs_mdt_freeze_buffer(struct inode *inode, struct buffer_head *bh)
{
 struct nilfs_shadow_map *shadow = NILFS_MDT(inode)->mi_shadow;
 struct buffer_head *bh_frozen;
 struct page *page;
 int blkbits = inode->i_blkbits;

 page = grab_cache_page(&shadow->frozen_data, bh->b_page->index);
 if (!page)
  return -ENOMEM;

 if (!page_has_buffers(page))
  create_empty_buffers(page, 1 << blkbits, 0);

 bh_frozen = nilfs_page_get_nth_block(page, bh_offset(bh) >> blkbits);

 if (!buffer_uptodate(bh_frozen))
  nilfs_copy_buffer(bh_frozen, bh);
 if (list_empty(&bh_frozen->b_assoc_buffers)) {
  list_add_tail(&bh_frozen->b_assoc_buffers,
         &shadow->frozen_buffers);
  set_buffer_nilfs_redirected(bh);
 } else {
  brelse(bh_frozen);
 }

 unlock_page(page);
 put_page(page);
 return 0;
}
