
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct page {int mapping; } ;
struct iomap_readpage_ctx {int cur_page_in_bio; TYPE_2__* bio; scalar_t__ is_readahead; struct page* cur_page; } ;
struct iomap_page {int read_count; } ;
struct iomap {scalar_t__ type; int bdev; } ;
struct inode {int dummy; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ loff_t ;
typedef int gfp_t ;
struct TYPE_9__ {scalar_t__ bi_sector; } ;
struct TYPE_10__ {int bi_end_io; TYPE_1__ bi_iter; int bi_opf; } ;


 int BIO_MAX_PAGES ;
 int GFP_KERNEL ;
 scalar_t__ IOMAP_INLINE ;
 scalar_t__ IOMAP_MAPPED ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int REQ_OP_READ ;
 int REQ_RAHEAD ;
 int WARN_ON_ONCE (scalar_t__) ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 scalar_t__ __bio_try_merge_page (TYPE_2__*,struct page*,unsigned int,unsigned int,int*) ;
 int atomic_inc (int *) ;
 int bio_add_page (TYPE_2__*,struct page*,unsigned int,unsigned int) ;
 TYPE_2__* bio_alloc (int,int ) ;
 scalar_t__ bio_end_sector (TYPE_2__*) ;
 scalar_t__ bio_full (TYPE_2__*,unsigned int) ;
 int bio_set_dev (TYPE_2__*,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int iomap_adjust_read_range (struct inode*,struct iomap_page*,scalar_t__*,scalar_t__,unsigned int*,unsigned int*) ;
 struct iomap_page* iomap_page_create (struct inode*,struct page*) ;
 int iomap_read_end_io ;
 int iomap_read_inline_data (struct inode*,struct page*,struct iomap*) ;
 scalar_t__ iomap_sector (struct iomap*,scalar_t__) ;
 int iomap_set_range_uptodate (struct page*,unsigned int,unsigned int) ;
 int mapping_gfp_constraint (int ,int ) ;
 int min (int ,int) ;
 int submit_bio (TYPE_2__*) ;
 int zero_user (struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static loff_t
iomap_readpage_actor(struct inode *inode, loff_t pos, loff_t length, void *data,
  struct iomap *iomap)
{
 struct iomap_readpage_ctx *ctx = data;
 struct page *page = ctx->cur_page;
 struct iomap_page *iop = iomap_page_create(inode, page);
 bool same_page = 0, is_contig = 0;
 loff_t orig_pos = pos;
 unsigned poff, plen;
 sector_t sector;

 if (iomap->type == IOMAP_INLINE) {
  WARN_ON_ONCE(pos);
  iomap_read_inline_data(inode, page, iomap);
  return PAGE_SIZE;
 }


 iomap_adjust_read_range(inode, iop, &pos, length, &poff, &plen);
 if (plen == 0)
  goto done;

 if (iomap->type != IOMAP_MAPPED || pos >= i_size_read(inode)) {
  zero_user(page, poff, plen);
  iomap_set_range_uptodate(page, poff, plen);
  goto done;
 }

 ctx->cur_page_in_bio = 1;




 sector = iomap_sector(iomap, pos);
 if (ctx->bio && bio_end_sector(ctx->bio) == sector)
  is_contig = 1;

 if (is_contig &&
     __bio_try_merge_page(ctx->bio, page, plen, poff, &same_page)) {
  if (!same_page && iop)
   atomic_inc(&iop->read_count);
  goto done;
 }






 if (iop)
  atomic_inc(&iop->read_count);

 if (!ctx->bio || !is_contig || bio_full(ctx->bio, plen)) {
  gfp_t gfp = mapping_gfp_constraint(page->mapping, GFP_KERNEL);
  int nr_vecs = (length + PAGE_SIZE - 1) >> PAGE_SHIFT;

  if (ctx->bio)
   submit_bio(ctx->bio);

  if (ctx->is_readahead)
   gfp |= __GFP_NORETRY | __GFP_NOWARN;
  ctx->bio = bio_alloc(gfp, min(BIO_MAX_PAGES, nr_vecs));
  ctx->bio->bi_opf = REQ_OP_READ;
  if (ctx->is_readahead)
   ctx->bio->bi_opf |= REQ_RAHEAD;
  ctx->bio->bi_iter.bi_sector = sector;
  bio_set_dev(ctx->bio, iomap->bdev);
  ctx->bio->bi_end_io = iomap_read_end_io;
 }

 bio_add_page(ctx->bio, page, plen, poff);
done:






 return pos - orig_pos + plen;
}
