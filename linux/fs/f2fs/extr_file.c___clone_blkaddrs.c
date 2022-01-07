
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct node_info {int version; } ;
struct inode {size_t i_size; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {size_t ofs_in_node; int data_blkaddr; int node_page; int inode; int nid; } ;
typedef size_t pgoff_t ;
typedef scalar_t__ block_t ;


 scalar_t__ ADDRS_PER_PAGE (int ,struct inode*) ;
 int ALLOC_NODE ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ NULL_ADDR ;
 size_t PAGE_SHIFT ;
 int PTR_ERR (struct page*) ;
 int datablock_addr (int ,int ,size_t) ;
 int f2fs_copy_page (struct page*,struct page*) ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,size_t,int ) ;
 struct page* f2fs_get_lock_data_page (struct inode*,size_t,int) ;
 struct page* f2fs_get_new_data_page (struct inode*,int *,size_t,int) ;
 int f2fs_get_node_info (struct f2fs_sb_info*,int ,struct node_info*) ;
 int f2fs_i_blocks_write (struct inode*,int,int,int) ;
 int f2fs_i_size_write (struct inode*,size_t) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_replace_block (struct f2fs_sb_info*,struct dnode_of_data*,int ,scalar_t__,int ,int,int) ;
 int f2fs_truncate_data_blocks_range (struct dnode_of_data*,int) ;
 int f2fs_truncate_hole (struct inode*,size_t,size_t) ;
 size_t min (size_t,size_t) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;
 int set_page_dirty (struct page*) ;

__attribute__((used)) static int __clone_blkaddrs(struct inode *src_inode, struct inode *dst_inode,
   block_t *blkaddr, int *do_replace,
   pgoff_t src, pgoff_t dst, pgoff_t len, bool full)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(src_inode);
 pgoff_t i = 0;
 int ret;

 while (i < len) {
  if (blkaddr[i] == NULL_ADDR && !full) {
   i++;
   continue;
  }

  if (do_replace[i] || blkaddr[i] == NULL_ADDR) {
   struct dnode_of_data dn;
   struct node_info ni;
   size_t new_size;
   pgoff_t ilen;

   set_new_dnode(&dn, dst_inode, ((void*)0), ((void*)0), 0);
   ret = f2fs_get_dnode_of_data(&dn, dst + i, ALLOC_NODE);
   if (ret)
    return ret;

   ret = f2fs_get_node_info(sbi, dn.nid, &ni);
   if (ret) {
    f2fs_put_dnode(&dn);
    return ret;
   }

   ilen = min((pgoff_t)
    ADDRS_PER_PAGE(dn.node_page, dst_inode) -
      dn.ofs_in_node, len - i);
   do {
    dn.data_blkaddr = datablock_addr(dn.inode,
      dn.node_page, dn.ofs_in_node);
    f2fs_truncate_data_blocks_range(&dn, 1);

    if (do_replace[i]) {
     f2fs_i_blocks_write(src_inode,
       1, 0, 0);
     f2fs_i_blocks_write(dst_inode,
       1, 1, 0);
     f2fs_replace_block(sbi, &dn, dn.data_blkaddr,
     blkaddr[i], ni.version, 1, 0);

     do_replace[i] = 0;
    }
    dn.ofs_in_node++;
    i++;
    new_size = (dst + i) << PAGE_SHIFT;
    if (dst_inode->i_size < new_size)
     f2fs_i_size_write(dst_inode, new_size);
   } while (--ilen && (do_replace[i] || blkaddr[i] == NULL_ADDR));

   f2fs_put_dnode(&dn);
  } else {
   struct page *psrc, *pdst;

   psrc = f2fs_get_lock_data_page(src_inode,
       src + i, 1);
   if (IS_ERR(psrc))
    return PTR_ERR(psrc);
   pdst = f2fs_get_new_data_page(dst_inode, ((void*)0), dst + i,
        1);
   if (IS_ERR(pdst)) {
    f2fs_put_page(psrc, 1);
    return PTR_ERR(pdst);
   }
   f2fs_copy_page(psrc, pdst);
   set_page_dirty(pdst);
   f2fs_put_page(pdst, 1);
   f2fs_put_page(psrc, 1);

   ret = f2fs_truncate_hole(src_inode,
      src + i, src + i + 1);
   if (ret)
    return ret;
   i++;
  }
 }
 return 0;
}
