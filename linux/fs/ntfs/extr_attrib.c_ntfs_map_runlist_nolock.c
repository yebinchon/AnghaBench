
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef int u8 ;
struct page {int dummy; } ;
typedef int runlist_element ;
struct TYPE_27__ {int * rl; } ;
struct TYPE_24__ {TYPE_5__* base_ntfs_ino; } ;
struct TYPE_28__ {int allocated_size; scalar_t__ type; scalar_t__ name_len; TYPE_4__ runlist; TYPE_10__* vol; int name; struct page* page; int size_lock; TYPE_1__ ext; } ;
typedef TYPE_5__ ntfs_inode ;
struct TYPE_29__ {int * mrec; TYPE_7__* attr; TYPE_5__* base_ntfs_ino; TYPE_5__* ntfs_ino; int * base_mrec; int * member_0; } ;
typedef TYPE_6__ ntfs_attr_search_ctx ;
typedef int VCN ;
struct TYPE_25__ {int highest_vcn; int lowest_vcn; } ;
struct TYPE_26__ {TYPE_2__ non_resident; } ;
struct TYPE_30__ {scalar_t__ type; scalar_t__ name_length; TYPE_3__ data; int non_resident; int name_offset; } ;
struct TYPE_23__ {int cluster_size_bits; } ;
typedef int MFT_RECORD ;
typedef TYPE_7__ ATTR_RECORD ;


 int BUG_ON (int) ;
 int CASE_SENSITIVE ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int IS_ERR (int *) ;
 int NInoAttr (TYPE_5__*) ;
 scalar_t__ NInoAttrList (TYPE_5__*) ;
 int PTR_ERR (int *) ;
 int get_page (struct page*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ likely (TYPE_6__*) ;
 void* map_mft_record (TYPE_5__*) ;
 int memcmp (int *,int ,scalar_t__) ;
 TYPE_6__* ntfs_attr_get_search_ctx (TYPE_5__*,int *) ;
 int ntfs_attr_lookup (scalar_t__,int ,scalar_t__,int ,int,int *,int ,TYPE_6__*) ;
 int ntfs_attr_put_search_ctx (TYPE_6__*) ;
 int ntfs_attr_reinit_search_ctx (TYPE_6__*) ;
 int ntfs_debug (char*,unsigned long long) ;
 int * ntfs_mapping_pairs_decompress (TYPE_10__*,TYPE_7__*,int *) ;
 int put_page (struct page*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int schedule () ;
 int sle64_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;
 int unmap_extent_mft_record (TYPE_5__*) ;
 int unmap_mft_record (TYPE_5__*) ;

int ntfs_map_runlist_nolock(ntfs_inode *ni, VCN vcn, ntfs_attr_search_ctx *ctx)
{
 VCN end_vcn;
 unsigned long flags;
 ntfs_inode *base_ni;
 MFT_RECORD *m;
 ATTR_RECORD *a;
 runlist_element *rl;
 struct page *put_this_page = ((void*)0);
 int err = 0;
 bool ctx_is_temporary, ctx_needs_reset;
 ntfs_attr_search_ctx old_ctx = { ((void*)0), };

 ntfs_debug("Mapping runlist part containing vcn 0x%llx.",
   (unsigned long long)vcn);
 if (!NInoAttr(ni))
  base_ni = ni;
 else
  base_ni = ni->ext.base_ntfs_ino;
 if (!ctx) {
  ctx_is_temporary = ctx_needs_reset = 1;
  m = map_mft_record(base_ni);
  if (IS_ERR(m))
   return PTR_ERR(m);
  ctx = ntfs_attr_get_search_ctx(base_ni, m);
  if (unlikely(!ctx)) {
   err = -ENOMEM;
   goto err_out;
  }
 } else {
  VCN allocated_size_vcn;

  BUG_ON(IS_ERR(ctx->mrec));
  a = ctx->attr;
  BUG_ON(!a->non_resident);
  ctx_is_temporary = 0;
  end_vcn = sle64_to_cpu(a->data.non_resident.highest_vcn);
  read_lock_irqsave(&ni->size_lock, flags);
  allocated_size_vcn = ni->allocated_size >>
    ni->vol->cluster_size_bits;
  read_unlock_irqrestore(&ni->size_lock, flags);
  if (!a->data.non_resident.lowest_vcn && end_vcn <= 0)
   end_vcn = allocated_size_vcn - 1;







  if (vcn >= allocated_size_vcn || (a->type == ni->type &&
    a->name_length == ni->name_len &&
    !memcmp((u8*)a + le16_to_cpu(a->name_offset),
    ni->name, ni->name_len) &&
    sle64_to_cpu(a->data.non_resident.lowest_vcn)
    <= vcn && end_vcn >= vcn))
   ctx_needs_reset = 0;
  else {

   old_ctx = *ctx;
   if (old_ctx.base_ntfs_ino && old_ctx.ntfs_ino !=
     old_ctx.base_ntfs_ino) {
    put_this_page = old_ctx.ntfs_ino->page;
    get_page(put_this_page);
   }




   ntfs_attr_reinit_search_ctx(ctx);
   ctx_needs_reset = 1;
  }
 }
 if (ctx_needs_reset) {
  err = ntfs_attr_lookup(ni->type, ni->name, ni->name_len,
    CASE_SENSITIVE, vcn, ((void*)0), 0, ctx);
  if (unlikely(err)) {
   if (err == -ENOENT)
    err = -EIO;
   goto err_out;
  }
  BUG_ON(!ctx->attr->non_resident);
 }
 a = ctx->attr;






 end_vcn = sle64_to_cpu(a->data.non_resident.highest_vcn) + 1;
 if (unlikely(vcn && vcn >= end_vcn)) {
  err = -ENOENT;
  goto err_out;
 }
 rl = ntfs_mapping_pairs_decompress(ni->vol, a, ni->runlist.rl);
 if (IS_ERR(rl))
  err = PTR_ERR(rl);
 else
  ni->runlist.rl = rl;
err_out:
 if (ctx_is_temporary) {
  if (likely(ctx))
   ntfs_attr_put_search_ctx(ctx);
  unmap_mft_record(base_ni);
 } else if (ctx_needs_reset) {







  if (NInoAttrList(base_ni)) {





   if (ctx->ntfs_ino != old_ctx.ntfs_ino) {




    if (ctx->base_ntfs_ino && ctx->ntfs_ino !=
      ctx->base_ntfs_ino) {
     unmap_extent_mft_record(ctx->ntfs_ino);
     ctx->mrec = ctx->base_mrec;
     BUG_ON(!ctx->mrec);
    }




    if (old_ctx.base_ntfs_ino &&
      old_ctx.ntfs_ino !=
      old_ctx.base_ntfs_ino) {
retry_map:
     ctx->mrec = map_mft_record(
       old_ctx.ntfs_ino);
     if (IS_ERR(ctx->mrec)) {
      if (PTR_ERR(ctx->mrec) ==
        -ENOMEM) {
       schedule();
       goto retry_map;
      } else
       old_ctx.ntfs_ino =
        old_ctx.
        base_ntfs_ino;
     }
    }
   }

   if (ctx->mrec != old_ctx.mrec) {
    if (!IS_ERR(ctx->mrec))
     old_ctx.attr = (ATTR_RECORD*)(
       (u8*)ctx->mrec +
       ((u8*)old_ctx.attr -
       (u8*)old_ctx.mrec));
    old_ctx.mrec = ctx->mrec;
   }
  }

  *ctx = old_ctx;
  if (put_this_page)
   put_page(put_this_page);
 }
 return err;
}
