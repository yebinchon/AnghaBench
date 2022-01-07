
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int cp_wait; } ;


 int DEFINE_WAIT (int ) ;
 int F2FS_WB_CP_DATA ;
 int HZ ;
 int TASK_UNINTERRUPTIBLE ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int finish_wait (int *,int *) ;
 int get_pages (struct f2fs_sb_info*,int ) ;
 int io_schedule_timeout (int) ;
 int prepare_to_wait (int *,int *,int ) ;
 scalar_t__ unlikely (int ) ;
 int wait ;

void f2fs_wait_on_all_pages_writeback(struct f2fs_sb_info *sbi)
{
 DEFINE_WAIT(wait);

 for (;;) {
  prepare_to_wait(&sbi->cp_wait, &wait, TASK_UNINTERRUPTIBLE);

  if (!get_pages(sbi, F2FS_WB_CP_DATA))
   break;

  if (unlikely(f2fs_cp_error(sbi)))
   break;

  io_schedule_timeout(5*HZ);
 }
 finish_wait(&sbi->cp_wait, &wait);
}
