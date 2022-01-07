
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EIO ;
 int HIBYTE (int ) ;
 int IREG_IO1_BASEHI ;
 int IREG_IO1_BASELO ;
 int IREG_LOGDEVICE ;
 int LOBYTE (int ) ;
 scalar_t__ snd_msnd_write_cfg (int,int ,int) ;

__attribute__((used)) static int snd_msnd_write_cfg_io1(int cfg, int num, u16 io)
{
 if (snd_msnd_write_cfg(cfg, IREG_LOGDEVICE, num))
  return -EIO;
 if (snd_msnd_write_cfg(cfg, IREG_IO1_BASEHI, HIBYTE(io)))
  return -EIO;
 if (snd_msnd_write_cfg(cfg, IREG_IO1_BASELO, LOBYTE(io)))
  return -EIO;
 return 0;
}
