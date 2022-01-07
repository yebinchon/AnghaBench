
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kirkwood_dma_data {scalar_t__ io; } ;


 scalar_t__ KIRKWOOD_INT_CAUSE ;
 scalar_t__ KIRKWOOD_INT_MASK ;
 scalar_t__ KIRKWOOD_PLAYCTL ;
 unsigned long KIRKWOOD_PLAYCTL_ENABLE_MASK ;
 scalar_t__ KIRKWOOD_RECCTL ;
 unsigned long KIRKWOOD_RECCTL_ENABLE_MASK ;
 int msleep (int) ;
 void* readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int kirkwood_i2s_init(struct kirkwood_dma_data *priv)
{
 unsigned long value;
 unsigned int reg_data;



 writel(0xffffffff, priv->io + KIRKWOOD_INT_CAUSE);
 writel(0, priv->io + KIRKWOOD_INT_MASK);

 reg_data = readl(priv->io + 0x1200);
 reg_data &= (~(0x333FF8));
 reg_data |= 0x111D18;
 writel(reg_data, priv->io + 0x1200);

 msleep(500);

 reg_data = readl(priv->io + 0x1200);
 reg_data &= (~(0x333FF8));
 reg_data |= 0x111D18;
 writel(reg_data, priv->io + 0x1200);


 value = readl(priv->io + KIRKWOOD_PLAYCTL);
 value &= ~KIRKWOOD_PLAYCTL_ENABLE_MASK;
 writel(value, priv->io + KIRKWOOD_PLAYCTL);

 value = readl(priv->io + KIRKWOOD_RECCTL);
 value &= ~KIRKWOOD_RECCTL_ENABLE_MASK;
 writel(value, priv->io + KIRKWOOD_RECCTL);

 return 0;

}
