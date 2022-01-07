
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EIO ;
 int IREG_LOGDEVICE ;
 scalar_t__ snd_msnd_activate_logical (int,int) ;
 scalar_t__ snd_msnd_write_cfg (int,int ,int) ;
 scalar_t__ snd_msnd_write_cfg_io0 (int,int,int ) ;
 scalar_t__ snd_msnd_write_cfg_io1 (int,int,int ) ;
 scalar_t__ snd_msnd_write_cfg_irq (int,int,int ) ;
 scalar_t__ snd_msnd_write_cfg_mem (int,int,int) ;

__attribute__((used)) static int snd_msnd_write_cfg_logical(int cfg, int num, u16 io0,
          u16 io1, u16 irq, int mem)
{
 if (snd_msnd_write_cfg(cfg, IREG_LOGDEVICE, num))
  return -EIO;
 if (snd_msnd_write_cfg_io0(cfg, num, io0))
  return -EIO;
 if (snd_msnd_write_cfg_io1(cfg, num, io1))
  return -EIO;
 if (snd_msnd_write_cfg_irq(cfg, num, irq))
  return -EIO;
 if (snd_msnd_write_cfg_mem(cfg, num, mem))
  return -EIO;
 if (snd_msnd_activate_logical(cfg, num))
  return -EIO;
 return 0;
}
