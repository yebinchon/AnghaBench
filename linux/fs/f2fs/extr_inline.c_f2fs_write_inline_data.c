
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct inode {int dummy; } ;
struct dnode_of_data {int inode_page; } ;


 int EAGAIN ;
 int F2FS_I_SB (struct inode*) ;
 int FI_APPEND_WRITE ;
 int FI_DATA_EXIST ;
 int LOOKUP_NODE ;
 int MAX_INLINE_DATA (struct inode*) ;
 int NODE ;
 int clear_inline_node (int ) ;
 int f2fs_bug_on (int ,int ) ;
 int f2fs_clear_page_cache_dirty_tag (struct page*) ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,int ,int ) ;
 int f2fs_has_inline_data (struct inode*) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_wait_on_page_writeback (int ,int ,int,int) ;
 void* inline_data_addr (struct inode*,int ) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,void*,int ) ;
 int set_inode_flag (struct inode*,int ) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;
 int set_page_dirty (int ) ;

int f2fs_write_inline_data(struct inode *inode, struct page *page)
{
 void *src_addr, *dst_addr;
 struct dnode_of_data dn;
 int err;

 set_new_dnode(&dn, inode, ((void*)0), ((void*)0), 0);
 err = f2fs_get_dnode_of_data(&dn, 0, LOOKUP_NODE);
 if (err)
  return err;

 if (!f2fs_has_inline_data(inode)) {
  f2fs_put_dnode(&dn);
  return -EAGAIN;
 }

 f2fs_bug_on(F2FS_I_SB(inode), page->index);

 f2fs_wait_on_page_writeback(dn.inode_page, NODE, 1, 1);
 src_addr = kmap_atomic(page);
 dst_addr = inline_data_addr(inode, dn.inode_page);
 memcpy(dst_addr, src_addr, MAX_INLINE_DATA(inode));
 kunmap_atomic(src_addr);
 set_page_dirty(dn.inode_page);

 f2fs_clear_page_cache_dirty_tag(page);

 set_inode_flag(inode, FI_APPEND_WRITE);
 set_inode_flag(inode, FI_DATA_EXIST);

 clear_inline_node(dn.inode_page);
 f2fs_put_dnode(&dn);
 return 0;
}
