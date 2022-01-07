
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_sector; } ;
struct bio {int bi_write_hint; int bi_opf; TYPE_1__ bi_iter; } ;


 int BIO_MAX_PAGES ;
 int GFP_NOFS ;
 struct bio* bio_alloc (int ,int ) ;
 int bio_chain (struct bio*,struct bio*) ;
 int bio_copy_dev (struct bio*,struct bio*) ;
 int bio_end_sector (struct bio*) ;
 int bio_get (struct bio*) ;
 int submit_bio (struct bio*) ;

__attribute__((used)) static struct bio *
xfs_chain_bio(
 struct bio *prev)
{
 struct bio *new;

 new = bio_alloc(GFP_NOFS, BIO_MAX_PAGES);
 bio_copy_dev(new, prev);
 new->bi_iter.bi_sector = bio_end_sector(prev);
 new->bi_opf = prev->bi_opf;
 new->bi_write_hint = prev->bi_write_hint;

 bio_chain(prev, new);
 bio_get(prev);
 submit_bio(prev);
 return new;
}
