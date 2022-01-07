
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int s_flag; } ;


 int test_bit (unsigned int,int *) ;

__attribute__((used)) static inline bool is_sbi_flag_set(struct f2fs_sb_info *sbi, unsigned int type)
{
 return test_bit(type, &sbi->s_flag);
}
