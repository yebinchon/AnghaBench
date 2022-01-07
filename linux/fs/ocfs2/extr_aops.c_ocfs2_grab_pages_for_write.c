
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct page {struct address_space* mapping; } ;
struct ocfs2_write_ctxt {unsigned long w_num_pages; scalar_t__ w_type; int w_target_locked; struct page** w_pages; struct page* w_target_page; } ;
struct inode {int i_sb; } ;
struct address_space {struct inode* host; } ;
typedef unsigned int loff_t ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ OCFS2_WRITE_DIRECT ;
 scalar_t__ OCFS2_WRITE_MMAP ;
 unsigned int PAGE_SHIFT ;
 int WARN_ON (struct address_space*) ;
 struct page* find_or_create_page (struct address_space*,unsigned long,int ) ;
 int get_page (struct page*) ;
 int i_size_read (struct inode*) ;
 int lock_page (struct page*) ;
 unsigned int max (unsigned int,int ) ;
 int mlog_errno (int) ;
 unsigned long ocfs2_align_clusters_to_page_index (int ,int ) ;
 unsigned long ocfs2_pages_per_cluster (int ) ;
 int unlock_page (struct page*) ;
 int wait_for_stable_page (struct page*) ;

__attribute__((used)) static int ocfs2_grab_pages_for_write(struct address_space *mapping,
          struct ocfs2_write_ctxt *wc,
          u32 cpos, loff_t user_pos,
          unsigned user_len, int new,
          struct page *mmap_page)
{
 int ret = 0, i;
 unsigned long start, target_index, end_index, index;
 struct inode *inode = mapping->host;
 loff_t last_byte;

 target_index = user_pos >> PAGE_SHIFT;
 if (new) {
  wc->w_num_pages = ocfs2_pages_per_cluster(inode->i_sb);
  start = ocfs2_align_clusters_to_page_index(inode->i_sb, cpos);





  last_byte = max(user_pos + user_len, i_size_read(inode));
  BUG_ON(last_byte < 1);
  end_index = ((last_byte - 1) >> PAGE_SHIFT) + 1;
  if ((start + wc->w_num_pages) > end_index)
   wc->w_num_pages = end_index - start;
 } else {
  wc->w_num_pages = 1;
  start = target_index;
 }
 end_index = (user_pos + user_len - 1) >> PAGE_SHIFT;

 for(i = 0; i < wc->w_num_pages; i++) {
  index = start + i;

  if (index >= target_index && index <= end_index &&
      wc->w_type == OCFS2_WRITE_MMAP) {





   lock_page(mmap_page);


   if (mmap_page->mapping != mapping) {
    WARN_ON(mmap_page->mapping);
    unlock_page(mmap_page);
    ret = -EAGAIN;
    goto out;
   }

   get_page(mmap_page);
   wc->w_pages[i] = mmap_page;
   wc->w_target_locked = 1;
  } else if (index >= target_index && index <= end_index &&
      wc->w_type == OCFS2_WRITE_DIRECT) {

   wc->w_pages[i] = ((void*)0);
   continue;
  } else {
   wc->w_pages[i] = find_or_create_page(mapping, index,
            GFP_NOFS);
   if (!wc->w_pages[i]) {
    ret = -ENOMEM;
    mlog_errno(ret);
    goto out;
   }
  }
  wait_for_stable_page(wc->w_pages[i]);

  if (index == target_index)
   wc->w_target_page = wc->w_pages[i];
 }
out:
 if (ret)
  wc->w_target_locked = 0;
 return ret;
}
