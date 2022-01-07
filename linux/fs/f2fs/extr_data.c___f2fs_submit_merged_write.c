
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {struct f2fs_bio_info** write_io; } ;
struct TYPE_2__ {int type; int op_flags; int op; } ;
struct f2fs_bio_info {int io_rwsem; TYPE_1__ fio; } ;
typedef enum temp_type { ____Placeholder_temp_type } temp_type ;
typedef enum page_type { ____Placeholder_page_type } page_type ;


 int META_FLUSH ;
 int NOBARRIER ;
 int PAGE_TYPE_OF_BIO (int) ;
 int REQ_FUA ;
 int REQ_META ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int REQ_PRIO ;
 int REQ_SYNC ;
 int __submit_merged_bio (struct f2fs_bio_info*) ;
 int down_write (int *) ;
 int test_opt (struct f2fs_sb_info*,int ) ;
 int up_write (int *) ;

__attribute__((used)) static void __f2fs_submit_merged_write(struct f2fs_sb_info *sbi,
    enum page_type type, enum temp_type temp)
{
 enum page_type btype = PAGE_TYPE_OF_BIO(type);
 struct f2fs_bio_info *io = sbi->write_io[btype] + temp;

 down_write(&io->io_rwsem);


 if (type >= META_FLUSH) {
  io->fio.type = META_FLUSH;
  io->fio.op = REQ_OP_WRITE;
  io->fio.op_flags = REQ_META | REQ_PRIO | REQ_SYNC;
  if (!test_opt(sbi, NOBARRIER))
   io->fio.op_flags |= REQ_PREFLUSH | REQ_FUA;
 }
 __submit_merged_bio(io);
 up_write(&io->io_rwsem);
}
