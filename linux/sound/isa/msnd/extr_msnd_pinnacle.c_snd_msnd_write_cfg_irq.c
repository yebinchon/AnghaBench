
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EIO ;
 int IREG_IRQ_NUMBER ;
 int IREG_IRQ_TYPE ;
 int IREG_LOGDEVICE ;
 int IRQTYPE_EDGE ;
 int LOBYTE (int ) ;
 scalar_t__ snd_msnd_write_cfg (int,int ,int) ;

__attribute__((used)) static int snd_msnd_write_cfg_irq(int cfg, int num, u16 irq)
{
 if (snd_msnd_write_cfg(cfg, IREG_LOGDEVICE, num))
  return -EIO;
 if (snd_msnd_write_cfg(cfg, IREG_IRQ_NUMBER, LOBYTE(irq)))
  return -EIO;
 if (snd_msnd_write_cfg(cfg, IREG_IRQ_TYPE, IRQTYPE_EDGE))
  return -EIO;
 return 0;
}
