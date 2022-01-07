
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_msnd {unsigned int io; } ;


 int EIO ;
 int HPCVR_HC ;
 scalar_t__ HP_CVR ;
 int inb (scalar_t__) ;

__attribute__((used)) static int snd_msnd_wait_HC0(struct snd_msnd *dev)
{
 unsigned int io = dev->io;
 int timeout = 1000;

 while (timeout-- > 0)
  if (!(inb(io + HP_CVR) & HPCVR_HC))
   return 0;

 return -EIO;
}
