
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_mgr {int dsp_reset; } ;


 int PCXHR_DSP_RESET ;
 int PCXHR_DSP_RESET_SMPTE ;
 int PCXHR_OUTPB (struct pcxhr_mgr*,int ,int ) ;

int hr222_manage_timecode(struct pcxhr_mgr *mgr, int enable)
{
 if (enable)
  mgr->dsp_reset |= PCXHR_DSP_RESET_SMPTE;
 else
  mgr->dsp_reset &= ~PCXHR_DSP_RESET_SMPTE;

 PCXHR_OUTPB(mgr, PCXHR_DSP_RESET, mgr->dsp_reset);
 return 0;
}
