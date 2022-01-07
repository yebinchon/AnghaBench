
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct f2fs_journal {int dummy; } ;
struct curseg_info {scalar_t__ next_blkoff; int segno; void* journal; int journal_rwsem; void* sum_blk; int curseg_mutex; } ;
struct TYPE_2__ {struct curseg_info* curseg_array; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NR_CURSEG_TYPE ;
 int NULL_SEGNO ;
 int PAGE_SIZE ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int array_size (int,int) ;
 void* f2fs_kzalloc (struct f2fs_sb_info*,int,int ) ;
 int init_rwsem (int *) ;
 int mutex_init (int *) ;
 int restore_curseg_summaries (struct f2fs_sb_info*) ;

__attribute__((used)) static int build_curseg(struct f2fs_sb_info *sbi)
{
 struct curseg_info *array;
 int i;

 array = f2fs_kzalloc(sbi, array_size(NR_CURSEG_TYPE, sizeof(*array)),
        GFP_KERNEL);
 if (!array)
  return -ENOMEM;

 SM_I(sbi)->curseg_array = array;

 for (i = 0; i < NR_CURSEG_TYPE; i++) {
  mutex_init(&array[i].curseg_mutex);
  array[i].sum_blk = f2fs_kzalloc(sbi, PAGE_SIZE, GFP_KERNEL);
  if (!array[i].sum_blk)
   return -ENOMEM;
  init_rwsem(&array[i].journal_rwsem);
  array[i].journal = f2fs_kzalloc(sbi,
    sizeof(struct f2fs_journal), GFP_KERNEL);
  if (!array[i].journal)
   return -ENOMEM;
  array[i].segno = NULL_SEGNO;
  array[i].next_blkoff = 0;
 }
 return restore_curseg_summaries(sbi);
}
