
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct iomap {scalar_t__ type; int bdev; } ;
struct inode {int dummy; } ;
struct bio_vec {int dummy; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; int bi_opf; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ IOMAP_MAPPED ;
 int REQ_OP_READ ;
 int __bio_add_page (struct bio*,struct page*,unsigned int,unsigned int) ;
 int bio_init (struct bio*,struct bio_vec*,int) ;
 int bio_set_dev (struct bio*,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int iomap_sector (struct iomap*,scalar_t__) ;
 int iomap_set_range_uptodate (struct page*,unsigned int,unsigned int) ;
 int submit_bio_wait (struct bio*) ;
 int zero_user_segments (struct page*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int
iomap_read_page_sync(struct inode *inode, loff_t block_start, struct page *page,
  unsigned poff, unsigned plen, unsigned from, unsigned to,
  struct iomap *iomap)
{
 struct bio_vec bvec;
 struct bio bio;

 if (iomap->type != IOMAP_MAPPED || block_start >= i_size_read(inode)) {
  zero_user_segments(page, poff, from, to, poff + plen);
  iomap_set_range_uptodate(page, poff, plen);
  return 0;
 }

 bio_init(&bio, &bvec, 1);
 bio.bi_opf = REQ_OP_READ;
 bio.bi_iter.bi_sector = iomap_sector(iomap, block_start);
 bio_set_dev(&bio, iomap->bdev);
 __bio_add_page(&bio, page, plen, poff);
 return submit_bio_wait(&bio);
}
