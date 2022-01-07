
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_20__ {TYPE_6__* base_ntfs_ino; } ;
struct TYPE_24__ {scalar_t__ type; int name_len; int initialized_size; int size_lock; int name; TYPE_2__ ext; } ;
typedef TYPE_6__ ntfs_inode ;
struct TYPE_25__ {TYPE_5__* attr; } ;
typedef TYPE_7__ ntfs_attr_search_ctx ;
typedef int loff_t ;
struct TYPE_21__ {int value_offset; int value_length; } ;
struct TYPE_22__ {TYPE_3__ resident; } ;
struct TYPE_23__ {TYPE_4__ data; } ;
struct TYPE_19__ {struct inode* host; } ;
typedef int MFT_RECORD ;


 scalar_t__ AT_DATA ;
 scalar_t__ AT_INDEX_ALLOCATION ;
 int BUG_ON (int) ;
 int CASE_SENSITIVE ;
 int EACCES ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int *) ;
 int NInoAttr (TYPE_6__*) ;
 scalar_t__ NInoCompressed (TYPE_6__*) ;
 scalar_t__ NInoEncrypted (TYPE_6__*) ;
 int NInoNonResident (TYPE_6__*) ;
 TYPE_6__* NTFS_I (struct inode*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (int *) ;
 int PageLocked (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int flush_dcache_page (struct page*) ;
 int i_size_read (struct inode*) ;
 int * kmap_atomic (struct page*) ;
 int kunmap_atomic (int *) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int * map_mft_record (TYPE_6__*) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 TYPE_7__* ntfs_attr_get_search_ctx (TYPE_6__*,int *) ;
 int ntfs_attr_lookup (scalar_t__,int ,int,int ,int ,int *,int ,TYPE_7__*) ;
 int ntfs_attr_put_search_ctx (TYPE_7__*) ;
 int ntfs_debug (char*) ;
 int ntfs_read_block (struct page*) ;
 int ntfs_read_compressed_block (struct page*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int unmap_mft_record (TYPE_6__*) ;
 int zero_user (struct page*,int ,int) ;

__attribute__((used)) static int ntfs_readpage(struct file *file, struct page *page)
{
 loff_t i_size;
 struct inode *vi;
 ntfs_inode *ni, *base_ni;
 u8 *addr;
 ntfs_attr_search_ctx *ctx;
 MFT_RECORD *mrec;
 unsigned long flags;
 u32 attr_len;
 int err = 0;

retry_readpage:
 BUG_ON(!PageLocked(page));
 vi = page->mapping->host;
 i_size = i_size_read(vi);

 if (unlikely(page->index >= (i_size + PAGE_SIZE - 1) >>
   PAGE_SHIFT)) {
  zero_user(page, 0, PAGE_SIZE);
  ntfs_debug("Read outside i_size - truncated?");
  goto done;
 }




 if (PageUptodate(page)) {
  unlock_page(page);
  return 0;
 }
 ni = NTFS_I(vi);
 if (ni->type != AT_INDEX_ALLOCATION) {

  if (NInoEncrypted(ni)) {
   BUG_ON(ni->type != AT_DATA);
   err = -EACCES;
   goto err_out;
  }

  if (NInoNonResident(ni) && NInoCompressed(ni)) {
   BUG_ON(ni->type != AT_DATA);
   BUG_ON(ni->name_len);
   return ntfs_read_compressed_block(page);
  }
 }

 if (NInoNonResident(ni)) {

  return ntfs_read_block(page);
 }
 if (unlikely(page->index > 0)) {
  zero_user(page, 0, PAGE_SIZE);
  goto done;
 }
 if (!NInoAttr(ni))
  base_ni = ni;
 else
  base_ni = ni->ext.base_ntfs_ino;

 mrec = map_mft_record(base_ni);
 if (IS_ERR(mrec)) {
  err = PTR_ERR(mrec);
  goto err_out;
 }




 if (unlikely(NInoNonResident(ni))) {
  unmap_mft_record(base_ni);
  goto retry_readpage;
 }
 ctx = ntfs_attr_get_search_ctx(base_ni, mrec);
 if (unlikely(!ctx)) {
  err = -ENOMEM;
  goto unm_err_out;
 }
 err = ntfs_attr_lookup(ni->type, ni->name, ni->name_len,
   CASE_SENSITIVE, 0, ((void*)0), 0, ctx);
 if (unlikely(err))
  goto put_unm_err_out;
 attr_len = le32_to_cpu(ctx->attr->data.resident.value_length);
 read_lock_irqsave(&ni->size_lock, flags);
 if (unlikely(attr_len > ni->initialized_size))
  attr_len = ni->initialized_size;
 i_size = i_size_read(vi);
 read_unlock_irqrestore(&ni->size_lock, flags);
 if (unlikely(attr_len > i_size)) {

  attr_len = i_size;
 }
 addr = kmap_atomic(page);

 memcpy(addr, (u8*)ctx->attr +
   le16_to_cpu(ctx->attr->data.resident.value_offset),
   attr_len);

 memset(addr + attr_len, 0, PAGE_SIZE - attr_len);
 flush_dcache_page(page);
 kunmap_atomic(addr);
put_unm_err_out:
 ntfs_attr_put_search_ctx(ctx);
unm_err_out:
 unmap_mft_record(base_ni);
done:
 SetPageUptodate(page);
err_out:
 unlock_page(page);
 return err;
}
