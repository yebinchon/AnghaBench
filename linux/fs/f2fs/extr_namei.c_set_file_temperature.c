
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct f2fs_sb_info {int sb_lock; TYPE_1__* raw_super; } ;
struct TYPE_2__ {int hot_ext_count; int extension_count; int extension_list; } ;


 size_t F2FS_EXTENSION_LEN ;
 int * __u8 (int ) ;
 int down_read (int *) ;
 int * extlist ;
 int file_set_cold (struct inode*) ;
 int file_set_hot (struct inode*) ;
 scalar_t__ is_extension_exist (unsigned char const*,int ) ;
 int le32_to_cpu (int ) ;
 int up_read (int *) ;

__attribute__((used)) static inline void set_file_temperature(struct f2fs_sb_info *sbi, struct inode *inode,
  const unsigned char *name)
{
 __u8 (*extlist)[F2FS_EXTENSION_LEN] = sbi->raw_super->extension_list;
 int i, cold_count, hot_count;

 down_read(&sbi->sb_lock);

 cold_count = le32_to_cpu(sbi->raw_super->extension_count);
 hot_count = sbi->raw_super->hot_ext_count;

 for (i = 0; i < cold_count + hot_count; i++) {
  if (is_extension_exist(name, extlist[i]))
   break;
 }

 up_read(&sbi->sb_lock);

 if (i == cold_count + hot_count)
  return;

 if (i < cold_count)
  file_set_cold(inode);
 else
  file_set_hot(inode);
}
