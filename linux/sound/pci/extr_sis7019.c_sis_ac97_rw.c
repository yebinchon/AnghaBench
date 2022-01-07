
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sis7019 {unsigned long ioport; TYPE_1__* pci; int ac97_mutex; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ SIS_AC97_CMD ;
 scalar_t__ SIS_AC97_SEMA ;
 int SIS_AC97_SEMA_BUSY ;
 int SIS_AC97_SEMA_RELEASE ;
 scalar_t__ SIS_AC97_STATUS ;
 int SIS_AC97_STATUS_BUSY ;



 int dev_err (int *,char*,int,int ) ;
 int inl (scalar_t__) ;
 int inw (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outl (int ,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static unsigned short sis_ac97_rw(struct sis7019 *sis, int codec, u32 cmd)
{
 unsigned long io = sis->ioport;
 unsigned short val = 0xffff;
 u16 status;
 u16 rdy;
 int count;
 static const u16 codec_ready[3] = {
  128,
  130,
  129,
 };

 rdy = codec_ready[codec];





 mutex_lock(&sis->ac97_mutex);

 count = 0xffff;
 while ((inw(io + SIS_AC97_SEMA) & SIS_AC97_SEMA_BUSY) && --count)
  udelay(1);

 if (!count)
  goto timeout;



 count = 0xffff;
 do {
  status = inw(io + SIS_AC97_STATUS);
  if ((status & rdy) && !(status & SIS_AC97_STATUS_BUSY))
   break;

  udelay(1);
 } while (--count);

 if (!count)
  goto timeout_sema;



 outl(cmd, io + SIS_AC97_CMD);
 udelay(10);

 count = 0xffff;
 while ((inw(io + SIS_AC97_STATUS) & SIS_AC97_STATUS_BUSY) && --count)
  udelay(1);



 val = inl(io + SIS_AC97_CMD) >> 16;

timeout_sema:
 outl(SIS_AC97_SEMA_RELEASE, io + SIS_AC97_SEMA);
timeout:
 mutex_unlock(&sis->ac97_mutex);

 if (!count) {
  dev_err(&sis->pci->dev, "ac97 codec %d timeout cmd 0x%08x\n",
     codec, cmd);
 }

 return val;
}
