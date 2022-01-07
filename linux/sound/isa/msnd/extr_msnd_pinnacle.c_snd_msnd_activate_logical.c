
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int IREG_ACTIVATE ;
 int IREG_LOGDEVICE ;
 int LD_ACTIVATE ;
 scalar_t__ snd_msnd_write_cfg (int,int ,int) ;

__attribute__((used)) static int snd_msnd_activate_logical(int cfg, int num)
{
 if (snd_msnd_write_cfg(cfg, IREG_LOGDEVICE, num))
  return -EIO;
 if (snd_msnd_write_cfg(cfg, IREG_ACTIVATE, LD_ACTIVATE))
  return -EIO;
 return 0;
}
