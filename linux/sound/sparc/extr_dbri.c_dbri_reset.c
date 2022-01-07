
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_dbri {scalar_t__ regs; } ;


 int D_E ;
 int D_G ;
 int D_GEN ;
 int D_R ;
 int D_S ;
 scalar_t__ REG0 ;
 scalar_t__ REG2 ;
 scalar_t__ REG8 ;
 scalar_t__ REG9 ;
 int dprintk (int ,char*,int,int,int,int) ;
 int sbus_readl (scalar_t__) ;
 int sbus_writel (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void dbri_reset(struct snd_dbri *dbri)
{
 int i;
 u32 tmp;

 dprintk(D_GEN, "reset 0:%x 2:%x 8:%x 9:%x\n",
  sbus_readl(dbri->regs + REG0),
  sbus_readl(dbri->regs + REG2),
  sbus_readl(dbri->regs + REG8), sbus_readl(dbri->regs + REG9));

 sbus_writel(D_R, dbri->regs + REG0);
 for (i = 0; (sbus_readl(dbri->regs + REG0) & D_R) && i < 64; i++)
  udelay(10);



 tmp = sbus_readl(dbri->regs + REG0);
 tmp |= D_G | D_E;
 tmp &= ~D_S;
 sbus_writel(tmp, dbri->regs + REG0);
}
