
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct page {scalar_t__ index; } ;
struct inode {int i_sb; int i_blkbits; int i_mapping; } ;
struct gfs2_inode {int i_gl; struct inode i_inode; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int BH_Uptodate ;
 int BIT (int ) ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int buffer_mapped (struct buffer_head*) ;
 int create_empty_buffers (struct page*,int ,int ) ;
 struct page* find_or_create_page (int ,int ,int ) ;
 scalar_t__ gfs2_is_jdata (struct gfs2_inode*) ;
 scalar_t__ gfs2_max_stuffed_size (struct gfs2_inode*) ;
 int gfs2_ordered_add_inode (struct gfs2_inode*) ;
 int gfs2_trans_add_data (int ,struct buffer_head*) ;
 scalar_t__ i_size_read (struct inode*) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int map_bh (struct buffer_head*,int ,scalar_t__) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memcpy (void*,scalar_t__,scalar_t__) ;
 int memset (void*,int ,scalar_t__) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int put_page (struct page*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int gfs2_unstuffer_page(struct gfs2_inode *ip, struct buffer_head *dibh,
          u64 block, struct page *page)
{
 struct inode *inode = &ip->i_inode;
 struct buffer_head *bh;
 int release = 0;

 if (!page || page->index) {
  page = find_or_create_page(inode->i_mapping, 0, GFP_NOFS);
  if (!page)
   return -ENOMEM;
  release = 1;
 }

 if (!PageUptodate(page)) {
  void *kaddr = kmap(page);
  u64 dsize = i_size_read(inode);

  if (dsize > gfs2_max_stuffed_size(ip))
   dsize = gfs2_max_stuffed_size(ip);

  memcpy(kaddr, dibh->b_data + sizeof(struct gfs2_dinode), dsize);
  memset(kaddr + dsize, 0, PAGE_SIZE - dsize);
  kunmap(page);

  SetPageUptodate(page);
 }

 if (!page_has_buffers(page))
  create_empty_buffers(page, BIT(inode->i_blkbits),
         BIT(BH_Uptodate));

 bh = page_buffers(page);

 if (!buffer_mapped(bh))
  map_bh(bh, inode->i_sb, block);

 set_buffer_uptodate(bh);
 if (gfs2_is_jdata(ip))
  gfs2_trans_add_data(ip->i_gl, bh);
 else {
  mark_buffer_dirty(bh);
  gfs2_ordered_add_inode(ip);
 }

 if (release) {
  unlock_page(page);
  put_page(page);
 }

 return 0;
}
