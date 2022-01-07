
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; struct super_block* i_sb; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int loff_t ;
typedef int handle_t ;
struct TYPE_2__ {int s_clustersize_bits; int s_clustersize; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 TYPE_1__* OCFS2_SB (struct super_block*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ PageDirty (struct page*) ;
 int PageUptodate (struct page*) ;
 int block_read_full_page (struct page*,int ) ;
 struct page* find_or_create_page (struct address_space*,int,int ) ;
 int i_size_read (struct inode*) ;
 int lock_page (struct page*) ;
 int mark_page_accessed (struct page*) ;
 int mlog_errno (int) ;
 int ocfs2_clear_cow_buffer ;
 int ocfs2_clusters_to_blocks (struct super_block*,int) ;
 int ocfs2_get_block ;
 int ocfs2_map_and_dirty_page (struct inode*,int *,unsigned int,unsigned int,struct page*,int ,int *) ;
 int page_buffers (struct page*) ;
 scalar_t__ page_has_buffers (struct page*) ;
 int put_page (struct page*) ;
 int trace_ocfs2_duplicate_clusters_by_page (int,int,int,int) ;
 int unlock_page (struct page*) ;
 int walk_page_buffers (int *,int ,unsigned int,unsigned int,int*,int ) ;
 int write_one_page (struct page*) ;

int ocfs2_duplicate_clusters_by_page(handle_t *handle,
         struct inode *inode,
         u32 cpos, u32 old_cluster,
         u32 new_cluster, u32 new_len)
{
 int ret = 0, partial;
 struct super_block *sb = inode->i_sb;
 u64 new_block = ocfs2_clusters_to_blocks(sb, new_cluster);
 struct page *page;
 pgoff_t page_index;
 unsigned int from, to;
 loff_t offset, end, map_end;
 struct address_space *mapping = inode->i_mapping;

 trace_ocfs2_duplicate_clusters_by_page(cpos, old_cluster,
            new_cluster, new_len);

 offset = ((loff_t)cpos) << OCFS2_SB(sb)->s_clustersize_bits;
 end = offset + (new_len << OCFS2_SB(sb)->s_clustersize_bits);




 if (end > i_size_read(inode))
  end = i_size_read(inode);

 while (offset < end) {
  page_index = offset >> PAGE_SHIFT;
  map_end = ((loff_t)page_index + 1) << PAGE_SHIFT;
  if (map_end > end)
   map_end = end;


  from = offset & (PAGE_SIZE - 1);
  to = PAGE_SIZE;
  if (map_end & (PAGE_SIZE - 1))
   to = map_end & (PAGE_SIZE - 1);

retry:
  page = find_or_create_page(mapping, page_index, GFP_NOFS);
  if (!page) {
   ret = -ENOMEM;
   mlog_errno(ret);
   break;
  }





  if (PAGE_SIZE <= OCFS2_SB(sb)->s_clustersize) {
   if (PageDirty(page)) {



    ret = write_one_page(page);
    goto retry;
   }
  }

  if (!PageUptodate(page)) {
   ret = block_read_full_page(page, ocfs2_get_block);
   if (ret) {
    mlog_errno(ret);
    goto unlock;
   }
   lock_page(page);
  }

  if (page_has_buffers(page)) {
   ret = walk_page_buffers(handle, page_buffers(page),
      from, to, &partial,
      ocfs2_clear_cow_buffer);
   if (ret) {
    mlog_errno(ret);
    goto unlock;
   }
  }

  ocfs2_map_and_dirty_page(inode,
      handle, from, to,
      page, 0, &new_block);
  mark_page_accessed(page);
unlock:
  unlock_page(page);
  put_page(page);
  page = ((void*)0);
  offset = map_end;
  if (ret)
   break;
 }

 return ret;
}
