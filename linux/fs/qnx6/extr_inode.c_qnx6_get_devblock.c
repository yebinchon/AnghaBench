
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct qnx6_sb_info {int s_blks_off; } ;
typedef int __fs32 ;


 struct qnx6_sb_info* QNX6_SB (struct super_block*) ;
 int fs32_to_cpu (struct qnx6_sb_info*,int ) ;

__attribute__((used)) static unsigned qnx6_get_devblock(struct super_block *sb, __fs32 block)
{
 struct qnx6_sb_info *sbi = QNX6_SB(sb);
 return fs32_to_cpu(sbi, block) + sbi->s_blks_off;
}
