
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
 int HDSP_DllError ;
 int HDSP_FirmwareCached ;
 int HDSP_FirmwareLoaded ;
 int HDSP_statusRegister ;
 int dev_err (int ,char*) ;
 int hdsp_read (struct hdsp*,int ) ;
 int hdsp_request_fw_loader (struct hdsp*) ;
 scalar_t__ snd_hdsp_load_firmware_from_cache (struct hdsp*) ;

__attribute__((used)) static int hdsp_check_for_firmware (struct hdsp *hdsp, int load_on_demand)
{
 if (hdsp->io_type == H9652 || hdsp->io_type == H9632)
  return 0;
 if ((hdsp_read (hdsp, HDSP_statusRegister) & HDSP_DllError) != 0) {
  hdsp->state &= ~HDSP_FirmwareLoaded;
  if (! load_on_demand)
   return -EIO;
  dev_err(hdsp->card->dev, "firmware not present.\n");

  if (! (hdsp->state & HDSP_FirmwareCached)) {
   if (! hdsp_request_fw_loader(hdsp))
    return 0;
   dev_err(hdsp->card->dev,
       "No firmware loaded nor cached, please upload firmware.\n");
   return -EIO;
  }
  if (snd_hdsp_load_firmware_from_cache(hdsp) != 0) {
   dev_err(hdsp->card->dev,
       "Firmware loading from cache failed, please upload manually.\n");
   return -EIO;
  }
 }
 return 0;
}
