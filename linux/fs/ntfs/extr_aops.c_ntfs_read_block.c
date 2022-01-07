
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct buffer_head {unsigned int b_blocknr; int (* b_end_io ) (struct buffer_head*,int) ;int b_bdev; struct buffer_head* b_this_page; } ;
typedef unsigned char sector_t ;
typedef unsigned char s64 ;
struct TYPE_13__ {unsigned char vcn; scalar_t__ length; } ;
typedef TYPE_3__ runlist_element ;
struct TYPE_14__ {unsigned char cluster_size_bits; unsigned char cluster_size_mask; TYPE_8__* sb; } ;
typedef TYPE_4__ ntfs_volume ;
struct TYPE_12__ {int lock; TYPE_3__* rl; } ;
struct TYPE_15__ {unsigned int allocated_size; unsigned char initialized_size; TYPE_2__ runlist; int type; int mft_no; int size_lock; TYPE_4__* vol; } ;
typedef TYPE_5__ ntfs_inode ;
typedef unsigned char loff_t ;
typedef unsigned char VCN ;
struct TYPE_16__ {unsigned int s_blocksize; unsigned char s_blocksize_bits; int s_bdev; } ;
struct TYPE_11__ {struct inode* host; } ;
typedef unsigned int LCN ;


 int BUG_ON (int) ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 unsigned int LCN_ENOENT ;
 unsigned int LCN_HOLE ;
 unsigned int LCN_RL_NOT_MAPPED ;
 int MAX_BUF_PER_PAGE ;
 int NInoAttr (TYPE_5__*) ;
 TYPE_5__* NTFS_I (struct inode*) ;
 unsigned char PAGE_SHIFT ;
 int PageError (struct page*) ;
 int REQ_OP_READ ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int buffer_mapped (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_mapped (struct buffer_head*) ;
 int create_empty_buffers (struct page*,unsigned int,int ) ;
 int down_read (int *) ;
 unsigned char i_size_read (struct inode*) ;
 scalar_t__ likely (int) ;
 int lock_buffer (struct buffer_head*) ;
 int ntfs_end_buffer_async_read (struct buffer_head*,int) ;
 int ntfs_error (TYPE_8__*,char*,int ,int ,unsigned long long,unsigned int,char*,int) ;
 int ntfs_map_runlist (TYPE_5__*,unsigned char) ;
 unsigned int ntfs_rl_vcn_to_lcn (TYPE_3__*,unsigned char) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int set_buffer_async_read (struct buffer_head*) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int submit_bh (int ,int ,struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int up_read (int *) ;
 int zero_user (struct page*,int,unsigned int) ;

__attribute__((used)) static int ntfs_read_block(struct page *page)
{
 loff_t i_size;
 VCN vcn;
 LCN lcn;
 s64 init_size;
 struct inode *vi;
 ntfs_inode *ni;
 ntfs_volume *vol;
 runlist_element *rl;
 struct buffer_head *bh, *head, *arr[MAX_BUF_PER_PAGE];
 sector_t iblock, lblock, zblock;
 unsigned long flags;
 unsigned int blocksize, vcn_ofs;
 int i, nr;
 unsigned char blocksize_bits;

 vi = page->mapping->host;
 ni = NTFS_I(vi);
 vol = ni->vol;


 BUG_ON(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni));

 blocksize = vol->sb->s_blocksize;
 blocksize_bits = vol->sb->s_blocksize_bits;

 if (!page_has_buffers(page)) {
  create_empty_buffers(page, blocksize, 0);
  if (unlikely(!page_has_buffers(page))) {
   unlock_page(page);
   return -ENOMEM;
  }
 }
 bh = head = page_buffers(page);
 BUG_ON(!bh);
 iblock = (s64)page->index << (PAGE_SHIFT - blocksize_bits);
 read_lock_irqsave(&ni->size_lock, flags);
 lblock = (ni->allocated_size + blocksize - 1) >> blocksize_bits;
 init_size = ni->initialized_size;
 i_size = i_size_read(vi);
 read_unlock_irqrestore(&ni->size_lock, flags);
 if (unlikely(init_size > i_size)) {

  init_size = i_size;
 }
 zblock = (init_size + blocksize - 1) >> blocksize_bits;


 rl = ((void*)0);
 nr = i = 0;
 do {
  int err = 0;

  if (unlikely(buffer_uptodate(bh)))
   continue;
  if (unlikely(buffer_mapped(bh))) {
   arr[nr++] = bh;
   continue;
  }
  bh->b_bdev = vol->sb->s_bdev;

  if (iblock < lblock) {
   bool is_retry = 0;


   vcn = (VCN)iblock << blocksize_bits >>
     vol->cluster_size_bits;
   vcn_ofs = ((VCN)iblock << blocksize_bits) &
     vol->cluster_size_mask;
   if (!rl) {
lock_retry_remap:
    down_read(&ni->runlist.lock);
    rl = ni->runlist.rl;
   }
   if (likely(rl != ((void*)0))) {

    while (rl->length && rl[1].vcn <= vcn)
     rl++;
    lcn = ntfs_rl_vcn_to_lcn(rl, vcn);
   } else
    lcn = LCN_RL_NOT_MAPPED;

   if (lcn >= 0) {

    bh->b_blocknr = ((lcn << vol->cluster_size_bits)
      + vcn_ofs) >> blocksize_bits;
    set_buffer_mapped(bh);

    if (iblock < zblock) {
     arr[nr++] = bh;
     continue;
    }

    goto handle_zblock;
   }

   if (lcn == LCN_HOLE)
    goto handle_hole;

   if (!is_retry && lcn == LCN_RL_NOT_MAPPED) {
    is_retry = 1;




    up_read(&ni->runlist.lock);
    err = ntfs_map_runlist(ni, vcn);
    if (likely(!err))
     goto lock_retry_remap;
    rl = ((void*)0);
   } else if (!rl)
    up_read(&ni->runlist.lock);





   if (err == -ENOENT || lcn == LCN_ENOENT) {
    err = 0;
    goto handle_hole;
   }

   if (!err)
    err = -EIO;
   bh->b_blocknr = -1;
   SetPageError(page);
   ntfs_error(vol->sb, "Failed to read from inode 0x%lx, "
     "attribute type 0x%x, vcn 0x%llx, "
     "offset 0x%x because its location on "
     "disk could not be determined%s "
     "(error code %i).", ni->mft_no,
     ni->type, (unsigned long long)vcn,
     vcn_ofs, is_retry ? " even after "
     "retrying" : "", err);
  }





handle_hole:
  bh->b_blocknr = -1UL;
  clear_buffer_mapped(bh);
handle_zblock:
  zero_user(page, i * blocksize, blocksize);
  if (likely(!err))
   set_buffer_uptodate(bh);
 } while (i++, iblock++, (bh = bh->b_this_page) != head);


 if (rl)
  up_read(&ni->runlist.lock);


 if (nr) {
  struct buffer_head *tbh;


  for (i = 0; i < nr; i++) {
   tbh = arr[i];
   lock_buffer(tbh);
   tbh->b_end_io = ntfs_end_buffer_async_read;
   set_buffer_async_read(tbh);
  }

  for (i = 0; i < nr; i++) {
   tbh = arr[i];
   if (likely(!buffer_uptodate(tbh)))
    submit_bh(REQ_OP_READ, 0, tbh);
   else
    ntfs_end_buffer_async_read(tbh, 1);
  }
  return 0;
 }

 if (likely(!PageError(page)))
  SetPageUptodate(page);
 else
  nr = -EIO;
 unlock_page(page);
 return nr;
}
