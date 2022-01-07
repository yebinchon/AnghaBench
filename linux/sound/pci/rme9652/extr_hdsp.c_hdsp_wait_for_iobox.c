
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdsp {scalar_t__ io_type; int state; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 scalar_t__ H9632 ;
 scalar_t__ H9652 ;
 int HDSP_ConfigError ;
 int HDSP_FirmwareLoaded ;
 int HDSP_statusRegister ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_info (int ,char*) ;
 int hdsp_read (struct hdsp*,int ) ;
 int msleep (unsigned int) ;

__attribute__((used)) static int hdsp_wait_for_iobox(struct hdsp *hdsp, unsigned int loops,
          unsigned int delay)
{
 unsigned int i;

 if (hdsp->io_type == H9652 || hdsp->io_type == H9632)
  return 0;

 for (i = 0; i != loops; ++i) {
  if (hdsp_read(hdsp, HDSP_statusRegister) & HDSP_ConfigError)
   msleep(delay);
  else {
   dev_dbg(hdsp->card->dev, "iobox found after %ums!\n",
       i * delay);
   return 0;
  }
 }

 dev_info(hdsp->card->dev, "no IO box connected!\n");
 hdsp->state &= ~HDSP_FirmwareLoaded;
 return -EIO;
}
