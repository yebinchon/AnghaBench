
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct samsung_i2s_priv {scalar_t__ addr; TYPE_1__* variant_regs; } ;
struct i2s_dai {struct samsung_i2s_priv* priv; } ;
struct TYPE_2__ {int rfs_off; int rfs_mask; } ;


 int EXYNOS7_MOD_RCLK_128FS ;
 int EXYNOS7_MOD_RCLK_192FS ;
 int EXYNOS7_MOD_RCLK_64FS ;
 int EXYNOS7_MOD_RCLK_96FS ;
 scalar_t__ I2SMOD ;
 int MOD_RCLK_256FS ;
 int MOD_RCLK_384FS ;
 int MOD_RCLK_512FS ;
 int MOD_RCLK_768FS ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void set_rfs(struct i2s_dai *i2s, unsigned rfs)
{
 struct samsung_i2s_priv *priv = i2s->priv;
 u32 mod = readl(priv->addr + I2SMOD);
 int rfs_shift = priv->variant_regs->rfs_off;

 mod &= ~(priv->variant_regs->rfs_mask << rfs_shift);

 switch (rfs) {
 case 192:
  mod |= (EXYNOS7_MOD_RCLK_192FS << rfs_shift);
  break;
 case 96:
  mod |= (EXYNOS7_MOD_RCLK_96FS << rfs_shift);
  break;
 case 128:
  mod |= (EXYNOS7_MOD_RCLK_128FS << rfs_shift);
  break;
 case 64:
  mod |= (EXYNOS7_MOD_RCLK_64FS << rfs_shift);
  break;
 case 768:
  mod |= (MOD_RCLK_768FS << rfs_shift);
  break;
 case 512:
  mod |= (MOD_RCLK_512FS << rfs_shift);
  break;
 case 384:
  mod |= (MOD_RCLK_384FS << rfs_shift);
  break;
 default:
  mod |= (MOD_RCLK_256FS << rfs_shift);
  break;
 }

 writel(mod, priv->addr + I2SMOD);
}
