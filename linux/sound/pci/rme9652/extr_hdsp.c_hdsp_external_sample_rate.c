
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {scalar_t__ io_type; } ;


 scalar_t__ H9632 ;
 scalar_t__ HDSP_AUTOSYNC_FROM_SPDIF ;
 int HDSP_status2Register ;






 unsigned int HDSP_systemFrequencyMask ;
 scalar_t__ hdsp_autosync_ref (struct hdsp*) ;
 unsigned int hdsp_read (struct hdsp*,int ) ;
 int hdsp_spdif_sample_rate (struct hdsp*) ;

__attribute__((used)) static int hdsp_external_sample_rate(struct hdsp *hdsp)
{
 unsigned int status2 = hdsp_read(hdsp, HDSP_status2Register);
 unsigned int rate_bits = status2 & HDSP_systemFrequencyMask;





 if (hdsp->io_type == H9632 &&
     hdsp_autosync_ref(hdsp) == HDSP_AUTOSYNC_FROM_SPDIF)
   return hdsp_spdif_sample_rate(hdsp);

 switch (rate_bits) {
 case 133: return 32000;
 case 132: return 44100;
 case 131: return 48000;
 case 130: return 64000;
 case 129: return 88200;
 case 128: return 96000;
 default:
  return 0;
 }
}
