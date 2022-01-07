
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdsp {scalar_t__ io_type; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ H9632 ;
 unsigned int HDSP_SPDIFErrorFlag ;
 unsigned int HDSP_spdifFrequencyMask ;
 unsigned int HDSP_spdifFrequencyMask_9632 ;
 int HDSP_statusRegister ;
 int dev_warn (int ,char*,unsigned int,unsigned int) ;
 unsigned int hdsp_read (struct hdsp*,int ) ;

__attribute__((used)) static int hdsp_spdif_sample_rate(struct hdsp *hdsp)
{
 unsigned int status = hdsp_read(hdsp, HDSP_statusRegister);
 unsigned int rate_bits = (status & HDSP_spdifFrequencyMask);


 if (hdsp->io_type == H9632)
   rate_bits = (status & HDSP_spdifFrequencyMask_9632);

 if (status & HDSP_SPDIFErrorFlag)
  return 0;

 switch (rate_bits) {
 case 133: return 32000;
 case 132: return 44100;
 case 131: return 48000;
 case 130: return 64000;
 case 129: return 88200;
 case 128: return 96000;
 case 136:
  if (hdsp->io_type == H9632) return 128000;
  break;
 case 135:
  if (hdsp->io_type == H9632) return 176400;
  break;
 case 134:
  if (hdsp->io_type == H9632) return 192000;
  break;
 default:
  break;
 }
 dev_warn(hdsp->card->dev,
   "unknown spdif frequency status; bits = 0x%x, status = 0x%x\n",
   rate_bits, status);
 return 0;
}
