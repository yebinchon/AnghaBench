
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int status; int * ctrl; scalar_t__ offset; scalar_t__ onboard; } ;
struct snd_dbri {TYPE_1__ mm; int lock; scalar_t__ regs; } ;


 int CHImaster ;
 int CS4215_CLB ;
 int D_C ;
 int D_ENPIO ;
 int D_MM ;
 int D_PIO0 ;
 int D_PIO1 ;
 int D_PIO2 ;
 scalar_t__ REG0 ;
 scalar_t__ REG2 ;
 int cs4215_setdata (struct snd_dbri*,int) ;
 int dprintk (int ,char*,int) ;
 int link_time_slot (struct snd_dbri*,int,int,int,int,scalar_t__) ;
 int msleep_interruptible (int) ;
 int recv_fixed (struct snd_dbri*,int,int *) ;
 int reset_chi (struct snd_dbri*,int ,int) ;
 int sbus_readl (scalar_t__) ;
 int sbus_writel (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int xmit_fixed (struct snd_dbri*,int,int) ;

__attribute__((used)) static int cs4215_setctrl(struct snd_dbri *dbri)
{
 int i, val;
 u32 tmp;
 unsigned long flags;






 cs4215_setdata(dbri, 1);
 udelay(125);





 val = D_ENPIO | D_PIO1 | (dbri->mm.onboard ? D_PIO0 : D_PIO2);
 sbus_writel(val, dbri->regs + REG2);
 dprintk(D_MM, "cs4215_setctrl: reg2=0x%x\n", val);
 udelay(34);
 spin_lock_irqsave(&dbri->lock, flags);
 tmp = sbus_readl(dbri->regs + REG0);
 tmp &= ~D_C;
 sbus_writel(tmp, dbri->regs + REG0);

 reset_chi(dbri, CHImaster, 128);
 link_time_slot(dbri, 17, 16, 16, 32, dbri->mm.offset);
 link_time_slot(dbri, 18, 16, 16, 8, dbri->mm.offset);
 link_time_slot(dbri, 19, 18, 16, 8, dbri->mm.offset + 48);
 spin_unlock_irqrestore(&dbri->lock, flags);


 dbri->mm.ctrl[0] &= ~CS4215_CLB;
 xmit_fixed(dbri, 17, *(int *)dbri->mm.ctrl);

 spin_lock_irqsave(&dbri->lock, flags);
 tmp = sbus_readl(dbri->regs + REG0);
 tmp |= D_C;
 sbus_writel(tmp, dbri->regs + REG0);
 spin_unlock_irqrestore(&dbri->lock, flags);

 for (i = 10; ((dbri->mm.status & 0xe4) != 0x20); --i)
  msleep_interruptible(1);

 if (i == 0) {
  dprintk(D_MM, "CS4215 didn't respond to CLB (0x%02x)\n",
   dbri->mm.status);
  return -1;
 }




 recv_fixed(dbri, 19, ((void*)0));




 dbri->mm.ctrl[0] |= CS4215_CLB;
 xmit_fixed(dbri, 17, *(int *)dbri->mm.ctrl);


 udelay(250);

 cs4215_setdata(dbri, 0);

 return 0;
}
