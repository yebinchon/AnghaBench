
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysv_zone_t ;
struct sysv_sb_info {int s_block_base; } ;


 int fs32_to_cpu (struct sysv_sb_info*,int ) ;

__attribute__((used)) static inline int block_to_cpu(struct sysv_sb_info *sbi, sysv_zone_t nr)
{
 return sbi->s_block_base + fs32_to_cpu(sbi, nr);
}
