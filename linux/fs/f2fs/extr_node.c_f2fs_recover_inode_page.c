
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct node_info {scalar_t__ blk_addr; int ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode {int i_inline; int i_crtime_nsec; int i_crtime; int i_extra_isize; int i_projid; int i_inline_xattr_size; scalar_t__ i_xattr_nid; int i_links; int i_blocks; scalar_t__ i_size; int i_ext; } ;
typedef int nid_t ;


 int BLK_RW_ASYNC ;
 int EINVAL ;
 int F2FS_EXTRA_ATTR ;
 scalar_t__ F2FS_FITS_IN_INODE (struct f2fs_inode*,int ,int ) ;
 int F2FS_INLINE_XATTR ;
 struct f2fs_inode* F2FS_INODE (struct page*) ;
 int HZ ;
 int NEW_ADDR ;
 int NODE_MAPPING (struct f2fs_sb_info*) ;
 scalar_t__ NULL_ADDR ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int WARN_ON (int) ;
 int congestion_wait (int ,int) ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int) ;
 int f2fs_get_node_info (struct f2fs_sb_info*,int ,struct node_info*) ;
 struct page* f2fs_grab_cache_page (int ,int ,int) ;
 int f2fs_put_page (struct page*,int) ;
 scalar_t__ f2fs_sb_has_flexible_inline_xattr (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_sb_has_inode_crtime (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_sb_has_project_quota (struct f2fs_sb_info*) ;
 int fill_node_footer (struct page*,int ,int ,int ,int) ;
 int i_crtime_nsec ;
 int i_inline_xattr_size ;
 int i_projid ;
 int inc_valid_inode_count (struct f2fs_sb_info*) ;
 int inc_valid_node_count (struct f2fs_sb_info*,int *,int) ;
 int ino_of_node (struct page*) ;
 int le16_to_cpu (int ) ;
 int memcpy (struct f2fs_inode*,struct f2fs_inode*,unsigned long) ;
 int remove_free_nid (struct f2fs_sb_info*,int ) ;
 int set_cold_node (struct page*,int) ;
 int set_node_addr (struct f2fs_sb_info*,struct node_info*,int ,int) ;
 int set_page_dirty (struct page*) ;
 scalar_t__ unlikely (int) ;

int f2fs_recover_inode_page(struct f2fs_sb_info *sbi, struct page *page)
{
 struct f2fs_inode *src, *dst;
 nid_t ino = ino_of_node(page);
 struct node_info old_ni, new_ni;
 struct page *ipage;
 int err;

 err = f2fs_get_node_info(sbi, ino, &old_ni);
 if (err)
  return err;

 if (unlikely(old_ni.blk_addr != NULL_ADDR))
  return -EINVAL;
retry:
 ipage = f2fs_grab_cache_page(NODE_MAPPING(sbi), ino, 0);
 if (!ipage) {
  congestion_wait(BLK_RW_ASYNC, HZ/50);
  goto retry;
 }


 remove_free_nid(sbi, ino);

 if (!PageUptodate(ipage))
  SetPageUptodate(ipage);
 fill_node_footer(ipage, ino, ino, 0, 1);
 set_cold_node(ipage, 0);

 src = F2FS_INODE(page);
 dst = F2FS_INODE(ipage);

 memcpy(dst, src, (unsigned long)&src->i_ext - (unsigned long)src);
 dst->i_size = 0;
 dst->i_blocks = cpu_to_le64(1);
 dst->i_links = cpu_to_le32(1);
 dst->i_xattr_nid = 0;
 dst->i_inline = src->i_inline & (F2FS_INLINE_XATTR | F2FS_EXTRA_ATTR);
 if (dst->i_inline & F2FS_EXTRA_ATTR) {
  dst->i_extra_isize = src->i_extra_isize;

  if (f2fs_sb_has_flexible_inline_xattr(sbi) &&
   F2FS_FITS_IN_INODE(src, le16_to_cpu(src->i_extra_isize),
       i_inline_xattr_size))
   dst->i_inline_xattr_size = src->i_inline_xattr_size;

  if (f2fs_sb_has_project_quota(sbi) &&
   F2FS_FITS_IN_INODE(src, le16_to_cpu(src->i_extra_isize),
        i_projid))
   dst->i_projid = src->i_projid;

  if (f2fs_sb_has_inode_crtime(sbi) &&
   F2FS_FITS_IN_INODE(src, le16_to_cpu(src->i_extra_isize),
       i_crtime_nsec)) {
   dst->i_crtime = src->i_crtime;
   dst->i_crtime_nsec = src->i_crtime_nsec;
  }
 }

 new_ni = old_ni;
 new_ni.ino = ino;

 if (unlikely(inc_valid_node_count(sbi, ((void*)0), 1)))
  WARN_ON(1);
 set_node_addr(sbi, &new_ni, NEW_ADDR, 0);
 inc_valid_inode_count(sbi);
 set_page_dirty(ipage);
 f2fs_put_page(ipage, 1);
 return 0;
}
