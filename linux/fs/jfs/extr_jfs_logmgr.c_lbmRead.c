
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbuf {int l_blkno; int l_flag; int l_ioevent; int l_offset; int l_page; } ;
struct jfs_log {int l2bsize; scalar_t__ no_integrity; int bdev; } ;
struct TYPE_2__ {int bi_sector; scalar_t__ bi_size; } ;
struct bio {TYPE_1__ bi_iter; int bi_opf; struct lbuf* bi_private; int (* bi_end_io ) (struct bio*) ;} ;


 int BUG_ON (int) ;
 int GFP_NOFS ;
 scalar_t__ LOGPSIZE ;
 int REQ_OP_READ ;
 int bio_add_page (struct bio*,int ,scalar_t__,int ) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_set_dev (struct bio*,int ) ;
 int jfs_info (char*,struct lbuf*,int) ;
 struct lbuf* lbmAllocate (struct jfs_log*,int) ;
 int lbmIODone (struct bio*) ;
 int lbmREAD ;
 int submit_bio (struct bio*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int lbmRead(struct jfs_log * log, int pn, struct lbuf ** bpp)
{
 struct bio *bio;
 struct lbuf *bp;




 *bpp = bp = lbmAllocate(log, pn);
 jfs_info("lbmRead: bp:0x%p pn:0x%x", bp, pn);

 bp->l_flag |= lbmREAD;

 bio = bio_alloc(GFP_NOFS, 1);

 bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
 bio_set_dev(bio, log->bdev);

 bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
 BUG_ON(bio->bi_iter.bi_size != LOGPSIZE);

 bio->bi_end_io = lbmIODone;
 bio->bi_private = bp;
 bio->bi_opf = REQ_OP_READ;

 if (log->no_integrity) {
  bio->bi_iter.bi_size = 0;
  lbmIODone(bio);
 } else {
  submit_bio(bio);
 }

 wait_event(bp->l_ioevent, (bp->l_flag != lbmREAD));

 return 0;
}
