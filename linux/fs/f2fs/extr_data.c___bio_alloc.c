
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {scalar_t__ io_wbc; int temp; int type; int op; int new_blkaddr; struct f2fs_sb_info* sbi; } ;
struct bio {int bi_write_hint; struct f2fs_sb_info* bi_private; int bi_end_io; } ;


 struct bio* f2fs_bio_alloc (struct f2fs_sb_info*,int,int) ;
 int f2fs_io_type_to_rw_hint (struct f2fs_sb_info*,int ,int ) ;
 int f2fs_read_end_io ;
 int f2fs_target_device (struct f2fs_sb_info*,int ,struct bio*) ;
 int f2fs_write_end_io ;
 scalar_t__ is_read_io (int ) ;
 int wbc_init_bio (scalar_t__,struct bio*) ;

__attribute__((used)) static struct bio *__bio_alloc(struct f2fs_io_info *fio, int npages)
{
 struct f2fs_sb_info *sbi = fio->sbi;
 struct bio *bio;

 bio = f2fs_bio_alloc(sbi, npages, 1);

 f2fs_target_device(sbi, fio->new_blkaddr, bio);
 if (is_read_io(fio->op)) {
  bio->bi_end_io = f2fs_read_end_io;
  bio->bi_private = ((void*)0);
 } else {
  bio->bi_end_io = f2fs_write_end_io;
  bio->bi_private = sbi;
  bio->bi_write_hint = f2fs_io_type_to_rw_hint(sbi,
      fio->type, fio->temp);
 }
 if (fio->io_wbc)
  wbc_init_bio(fio->io_wbc, bio);

 return bio;
}
