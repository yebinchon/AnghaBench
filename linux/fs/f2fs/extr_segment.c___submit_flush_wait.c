
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct block_device {int dummy; } ;
struct bio {int bi_opf; } ;


 int ENOMEM ;
 int FLUSH_MERGE ;
 int NOBARRIER ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int REQ_SYNC ;
 int bio_put (struct bio*) ;
 int bio_set_dev (struct bio*,struct block_device*) ;
 struct bio* f2fs_bio_alloc (struct f2fs_sb_info*,int ,int) ;
 int submit_bio_wait (struct bio*) ;
 int test_opt (struct f2fs_sb_info*,int ) ;
 int trace_f2fs_issue_flush (struct block_device*,int ,int ,int) ;

__attribute__((used)) static int __submit_flush_wait(struct f2fs_sb_info *sbi,
    struct block_device *bdev)
{
 struct bio *bio;
 int ret;

 bio = f2fs_bio_alloc(sbi, 0, 0);
 if (!bio)
  return -ENOMEM;

 bio->bi_opf = REQ_OP_WRITE | REQ_SYNC | REQ_PREFLUSH;
 bio_set_dev(bio, bdev);
 ret = submit_bio_wait(bio);
 bio_put(bio);

 trace_f2fs_issue_flush(bdev, test_opt(sbi, NOBARRIER),
    test_opt(sbi, FLUSH_MERGE), ret);
 return ret;
}
