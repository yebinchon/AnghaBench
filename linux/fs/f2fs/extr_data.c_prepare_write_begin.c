
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct inode {scalar_t__ i_nlink; int i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct extent_info {scalar_t__ blk; scalar_t__ fofs; int member_2; int member_1; int member_0; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; int node_changed; } ;
typedef scalar_t__ pgoff_t ;
typedef int loff_t ;
typedef scalar_t__ block_t ;
struct TYPE_2__ {struct inode* host; } ;


 int F2FS_GET_BLOCK_DEFAULT ;
 int F2FS_GET_BLOCK_PRE_AIO ;
 int FI_DATA_EXIST ;
 int FI_NO_PREALLOC ;
 scalar_t__ IS_ERR (struct page*) ;
 int LOOKUP_NODE ;
 unsigned int MAX_INLINE_DATA (struct inode*) ;
 scalar_t__ NULL_ADDR ;
 int PAGE_MASK ;
 unsigned int PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 int WARN_ON (int) ;
 int __do_map_lock (struct f2fs_sb_info*,int,int) ;
 int f2fs_convert_inline_page (struct dnode_of_data*,struct page*) ;
 int f2fs_do_read_inline_data (struct page*,struct page*) ;
 int f2fs_get_block (struct dnode_of_data*,scalar_t__) ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,scalar_t__,int ) ;
 struct page* f2fs_get_node_page (struct f2fs_sb_info*,int ) ;
 scalar_t__ f2fs_has_inline_data (struct inode*) ;
 scalar_t__ f2fs_lookup_extent_cache (struct inode*,scalar_t__,struct extent_info*) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_verity_in_progress (struct inode*) ;
 int i_size_read (struct inode*) ;
 int is_inode_flag_set (struct inode*,int ) ;
 int set_inline_node (struct page*) ;
 int set_inode_flag (struct inode*,int ) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,struct page*,struct page*,int ) ;

__attribute__((used)) static int prepare_write_begin(struct f2fs_sb_info *sbi,
   struct page *page, loff_t pos, unsigned len,
   block_t *blk_addr, bool *node_changed)
{
 struct inode *inode = page->mapping->host;
 pgoff_t index = page->index;
 struct dnode_of_data dn;
 struct page *ipage;
 bool locked = 0;
 struct extent_info ei = {0,0,0};
 int err = 0;
 int flag;





 if (!f2fs_has_inline_data(inode) && len == PAGE_SIZE &&
     !is_inode_flag_set(inode, FI_NO_PREALLOC) &&
     !f2fs_verity_in_progress(inode))
  return 0;


 if (f2fs_has_inline_data(inode) && pos + len > MAX_INLINE_DATA(inode))
  flag = F2FS_GET_BLOCK_DEFAULT;
 else
  flag = F2FS_GET_BLOCK_PRE_AIO;

 if (f2fs_has_inline_data(inode) ||
   (pos & PAGE_MASK) >= i_size_read(inode)) {
  __do_map_lock(sbi, flag, 1);
  locked = 1;
 }
restart:

 ipage = f2fs_get_node_page(sbi, inode->i_ino);
 if (IS_ERR(ipage)) {
  err = PTR_ERR(ipage);
  goto unlock_out;
 }

 set_new_dnode(&dn, inode, ipage, ipage, 0);

 if (f2fs_has_inline_data(inode)) {
  if (pos + len <= MAX_INLINE_DATA(inode)) {
   f2fs_do_read_inline_data(page, ipage);
   set_inode_flag(inode, FI_DATA_EXIST);
   if (inode->i_nlink)
    set_inline_node(ipage);
  } else {
   err = f2fs_convert_inline_page(&dn, page);
   if (err)
    goto out;
   if (dn.data_blkaddr == NULL_ADDR)
    err = f2fs_get_block(&dn, index);
  }
 } else if (locked) {
  err = f2fs_get_block(&dn, index);
 } else {
  if (f2fs_lookup_extent_cache(inode, index, &ei)) {
   dn.data_blkaddr = ei.blk + index - ei.fofs;
  } else {

   err = f2fs_get_dnode_of_data(&dn, index, LOOKUP_NODE);
   if (err || dn.data_blkaddr == NULL_ADDR) {
    f2fs_put_dnode(&dn);
    __do_map_lock(sbi, F2FS_GET_BLOCK_PRE_AIO,
        1);
    WARN_ON(flag != F2FS_GET_BLOCK_PRE_AIO);
    locked = 1;
    goto restart;
   }
  }
 }


 *blk_addr = dn.data_blkaddr;
 *node_changed = dn.node_changed;
out:
 f2fs_put_dnode(&dn);
unlock_out:
 if (locked)
  __do_map_lock(sbi, flag, 0);
 return err;
}
