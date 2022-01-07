
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_info {int sentry_lock; } ;
struct seg_entry {int cur_valid_map; } ;
struct f2fs_sb_info {int dummy; } ;


 struct sit_info* SIT_I (struct f2fs_sb_info*) ;
 int down_read (int *) ;
 int f2fs_test_bit (int,int ) ;
 struct seg_entry* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;
 int up_read (int *) ;

__attribute__((used)) static int check_valid_map(struct f2fs_sb_info *sbi,
    unsigned int segno, int offset)
{
 struct sit_info *sit_i = SIT_I(sbi);
 struct seg_entry *sentry;
 int ret;

 down_read(&sit_i->sentry_lock);
 sentry = get_seg_entry(sbi, segno);
 ret = f2fs_test_bit(offset, sentry->cur_valid_map);
 up_read(&sit_i->sentry_lock);
 return ret;
}
