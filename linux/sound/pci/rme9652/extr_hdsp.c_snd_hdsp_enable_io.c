
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdsp {int max_channels; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 scalar_t__ HDSP_inputEnable ;
 scalar_t__ HDSP_outputEnable ;
 int dev_err (int ,char*) ;
 scalar_t__ hdsp_fifo_wait (struct hdsp*,int ,int) ;
 int hdsp_write (struct hdsp*,scalar_t__,int) ;

__attribute__((used)) static int snd_hdsp_enable_io (struct hdsp *hdsp)
{
 int i;

 if (hdsp_fifo_wait (hdsp, 0, 100)) {
  dev_err(hdsp->card->dev,
   "enable_io fifo_wait failed\n");
  return -EIO;
 }

 for (i = 0; i < hdsp->max_channels; ++i) {
  hdsp_write (hdsp, HDSP_inputEnable + (4 * i), 1);
  hdsp_write (hdsp, HDSP_outputEnable + (4 * i), 1);
 }

 return 0;
}
