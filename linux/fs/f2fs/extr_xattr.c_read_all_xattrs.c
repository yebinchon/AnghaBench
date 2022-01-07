
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_xattr_header {void* h_refcount; void* h_magic; } ;
typedef scalar_t__ nid_t ;
struct TYPE_2__ {scalar_t__ i_xattr_nid; } ;


 int ENOMEM ;
 TYPE_1__* F2FS_I (struct inode*) ;
 int F2FS_I_SB (struct inode*) ;
 scalar_t__ F2FS_XATTR_MAGIC ;
 int GFP_NOFS ;
 unsigned int VALID_XATTR_BLOCK_SIZE ;
 struct f2fs_xattr_header* XATTR_HDR (void*) ;
 scalar_t__ XATTR_PADDING_SIZE ;
 void* cpu_to_le32 (int) ;
 void* f2fs_kzalloc (int ,scalar_t__,int ) ;
 unsigned int inline_xattr_size (struct inode*) ;
 int kvfree (void*) ;
 scalar_t__ le32_to_cpu (void*) ;
 int read_inline_xattr (struct inode*,struct page*,void*) ;
 int read_xattr_block (struct inode*,void*) ;

__attribute__((used)) static int read_all_xattrs(struct inode *inode, struct page *ipage,
       void **base_addr)
{
 struct f2fs_xattr_header *header;
 nid_t xnid = F2FS_I(inode)->i_xattr_nid;
 unsigned int size = VALID_XATTR_BLOCK_SIZE;
 unsigned int inline_size = inline_xattr_size(inode);
 void *txattr_addr;
 int err;

 txattr_addr = f2fs_kzalloc(F2FS_I_SB(inode),
   inline_size + size + XATTR_PADDING_SIZE, GFP_NOFS);
 if (!txattr_addr)
  return -ENOMEM;


 if (inline_size) {
  err = read_inline_xattr(inode, ipage, txattr_addr);
  if (err)
   goto fail;
 }


 if (xnid) {
  err = read_xattr_block(inode, txattr_addr);
  if (err)
   goto fail;
 }

 header = XATTR_HDR(txattr_addr);


 if (le32_to_cpu(header->h_magic) != F2FS_XATTR_MAGIC) {
  header->h_magic = cpu_to_le32(F2FS_XATTR_MAGIC);
  header->h_refcount = cpu_to_le32(1);
 }
 *base_addr = txattr_addr;
 return 0;
fail:
 kvfree(txattr_addr);
 return err;
}
