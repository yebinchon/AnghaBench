
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int s_flag; } ;


 int clear_bit (unsigned int,int *) ;

__attribute__((used)) static inline void clear_sbi_flag(struct f2fs_sb_info *sbi, unsigned int type)
{
 clear_bit(type, &sbi->s_flag);
}
