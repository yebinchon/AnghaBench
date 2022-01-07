
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_ac97_info {unsigned int regs; } ;


 int __raw_readl (unsigned int) ;

__attribute__((used)) static inline unsigned ep93xx_ac97_read_reg(struct ep93xx_ac97_info *info,
         unsigned reg)
{
 return __raw_readl(info->regs + reg);
}
