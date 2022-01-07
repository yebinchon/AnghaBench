
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ mapping; int index; } ;
struct inode {scalar_t__ i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
typedef scalar_t__ pgoff_t ;
typedef scalar_t__ nid_t ;


 int EIO ;
 int FI_DIRTY_INODE ;
 int FS_NODE_IO ;
 int IS_DNODE (struct page*) ;
 scalar_t__ IS_ERR_OR_NULL (struct page*) ;
 scalar_t__ IS_INODE (struct page*) ;
 int NODE ;
 scalar_t__ NODE_MAPPING (struct f2fs_sb_info*) ;
 int PAGECACHE_TAG_DIRTY ;
 int PTR_ERR_OR_ZERO (struct page*) ;
 int PageDirty (struct page*) ;
 int __write_node_page (struct page*,int,int*,struct writeback_control*,int,int ,unsigned int*) ;
 int clear_page_dirty_for_io (struct page*) ;
 int cond_resched () ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int f2fs_debug (struct f2fs_sb_info*,char*,scalar_t__,int ) ;
 int f2fs_need_dentry_mark (struct f2fs_sb_info*,scalar_t__) ;
 int f2fs_put_page (struct page*,int ) ;
 int f2fs_submit_merged_write_cond (struct f2fs_sb_info*,int *,int *,scalar_t__,int ) ;
 int f2fs_update_inode (struct inode*,struct page*) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 scalar_t__ ino_of_node (struct page*) ;
 int is_cold_node (struct page*) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 struct page* last_fsync_dnode (struct f2fs_sb_info*,scalar_t__) ;
 int lock_page (struct page*) ;
 int pagevec_init (struct pagevec*) ;
 int pagevec_lookup_tag (struct pagevec*,scalar_t__,scalar_t__*,int ) ;
 int pagevec_release (struct pagevec*) ;
 int set_dentry_mark (struct page*,int ) ;
 int set_fsync_mark (struct page*,int) ;
 int set_page_dirty (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

int f2fs_fsync_node_pages(struct f2fs_sb_info *sbi, struct inode *inode,
   struct writeback_control *wbc, bool atomic,
   unsigned int *seq_id)
{
 pgoff_t index;
 struct pagevec pvec;
 int ret = 0;
 struct page *last_page = ((void*)0);
 bool marked = 0;
 nid_t ino = inode->i_ino;
 int nr_pages;
 int nwritten = 0;

 if (atomic) {
  last_page = last_fsync_dnode(sbi, ino);
  if (IS_ERR_OR_NULL(last_page))
   return PTR_ERR_OR_ZERO(last_page);
 }
retry:
 pagevec_init(&pvec);
 index = 0;

 while ((nr_pages = pagevec_lookup_tag(&pvec, NODE_MAPPING(sbi), &index,
    PAGECACHE_TAG_DIRTY))) {
  int i;

  for (i = 0; i < nr_pages; i++) {
   struct page *page = pvec.pages[i];
   bool submitted = 0;

   if (unlikely(f2fs_cp_error(sbi))) {
    f2fs_put_page(last_page, 0);
    pagevec_release(&pvec);
    ret = -EIO;
    goto out;
   }

   if (!IS_DNODE(page) || !is_cold_node(page))
    continue;
   if (ino_of_node(page) != ino)
    continue;

   lock_page(page);

   if (unlikely(page->mapping != NODE_MAPPING(sbi))) {
continue_unlock:
    unlock_page(page);
    continue;
   }
   if (ino_of_node(page) != ino)
    goto continue_unlock;

   if (!PageDirty(page) && page != last_page) {

    goto continue_unlock;
   }

   f2fs_wait_on_page_writeback(page, NODE, 1, 1);

   set_fsync_mark(page, 0);
   set_dentry_mark(page, 0);

   if (!atomic || page == last_page) {
    set_fsync_mark(page, 1);
    if (IS_INODE(page)) {
     if (is_inode_flag_set(inode,
        FI_DIRTY_INODE))
      f2fs_update_inode(inode, page);
     set_dentry_mark(page,
      f2fs_need_dentry_mark(sbi, ino));
    }

    if (!PageDirty(page))
     set_page_dirty(page);
   }

   if (!clear_page_dirty_for_io(page))
    goto continue_unlock;

   ret = __write_node_page(page, atomic &&
      page == last_page,
      &submitted, wbc, 1,
      FS_NODE_IO, seq_id);
   if (ret) {
    unlock_page(page);
    f2fs_put_page(last_page, 0);
    break;
   } else if (submitted) {
    nwritten++;
   }

   if (page == last_page) {
    f2fs_put_page(page, 0);
    marked = 1;
    break;
   }
  }
  pagevec_release(&pvec);
  cond_resched();

  if (ret || marked)
   break;
 }
 if (!ret && atomic && !marked) {
  f2fs_debug(sbi, "Retry to write fsync mark: ino=%u, idx=%lx",
      ino, last_page->index);
  lock_page(last_page);
  f2fs_wait_on_page_writeback(last_page, NODE, 1, 1);
  set_page_dirty(last_page);
  unlock_page(last_page);
  goto retry;
 }
out:
 if (nwritten)
  f2fs_submit_merged_write_cond(sbi, ((void*)0), ((void*)0), ino, NODE);
 return ret ? -EIO: 0;
}
