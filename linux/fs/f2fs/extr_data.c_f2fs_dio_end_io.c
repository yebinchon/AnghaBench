
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_private_dio {int orig_end_io; struct f2fs_private_dio* orig_private; scalar_t__ write; int inode; } ;
struct bio {int bi_end_io; struct f2fs_private_dio* bi_private; } ;


 int F2FS_DIO_READ ;
 int F2FS_DIO_WRITE ;
 int F2FS_I_SB (int ) ;
 int bio_endio (struct bio*) ;
 int dec_page_count (int ,int ) ;
 int kvfree (struct f2fs_private_dio*) ;

__attribute__((used)) static void f2fs_dio_end_io(struct bio *bio)
{
 struct f2fs_private_dio *dio = bio->bi_private;

 dec_page_count(F2FS_I_SB(dio->inode),
   dio->write ? F2FS_DIO_WRITE : F2FS_DIO_READ);

 bio->bi_private = dio->orig_private;
 bio->bi_end_io = dio->orig_end_io;

 kvfree(dio);

 bio_endio(bio);
}
