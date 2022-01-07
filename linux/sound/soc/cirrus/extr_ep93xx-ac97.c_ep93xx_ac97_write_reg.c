
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_ac97_info {unsigned int regs; } ;


 int __raw_writel (unsigned int,unsigned int) ;

__attribute__((used)) static inline void ep93xx_ac97_write_reg(struct ep93xx_ac97_info *info,
      unsigned reg, unsigned val)
{
 __raw_writel(val, info->regs + reg);
}
