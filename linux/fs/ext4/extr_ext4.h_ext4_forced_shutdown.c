
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {int s_ext4_flags; } ;


 int EXT4_FLAGS_SHUTDOWN ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int ext4_forced_shutdown(struct ext4_sb_info *sbi)
{
 return test_bit(EXT4_FLAGS_SHUTDOWN, &sbi->s_ext4_flags);
}
