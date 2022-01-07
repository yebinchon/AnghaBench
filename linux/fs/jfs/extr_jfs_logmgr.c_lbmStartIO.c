
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lbuf {int l_blkno; int l_offset; int l_page; struct jfs_log* l_log; } ;
struct jfs_log {int l2bsize; scalar_t__ no_integrity; int bdev; } ;
struct TYPE_3__ {int bi_sector; scalar_t__ bi_size; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; struct lbuf* bi_private; int (* bi_end_io ) (struct bio*) ;} ;
struct TYPE_4__ {int submitted; } ;


 int BUG_ON (int) ;
 int GFP_NOFS ;
 int INCREMENT (int ) ;
 scalar_t__ LOGPSIZE ;
 int REQ_OP_WRITE ;
 int REQ_SYNC ;
 int bio_add_page (struct bio*,int ,scalar_t__,int ) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_set_dev (struct bio*,int ) ;
 int jfs_info (char*) ;
 int lbmIODone (struct bio*) ;
 TYPE_2__ lmStat ;
 int submit_bio (struct bio*) ;

__attribute__((used)) static void lbmStartIO(struct lbuf * bp)
{
 struct bio *bio;
 struct jfs_log *log = bp->l_log;

 jfs_info("lbmStartIO");

 bio = bio_alloc(GFP_NOFS, 1);
 bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
 bio_set_dev(bio, log->bdev);

 bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
 BUG_ON(bio->bi_iter.bi_size != LOGPSIZE);

 bio->bi_end_io = lbmIODone;
 bio->bi_private = bp;
 bio->bi_opf = REQ_OP_WRITE | REQ_SYNC;


 if (log->no_integrity) {
  bio->bi_iter.bi_size = 0;
  lbmIODone(bio);
 } else {
  submit_bio(bio);
  INCREMENT(lmStat.submitted);
 }
}
