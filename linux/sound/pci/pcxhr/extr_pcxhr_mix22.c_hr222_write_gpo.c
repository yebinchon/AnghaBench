
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_mgr {unsigned char dsp_reset; } ;


 int PCXHR_DSP_RESET ;
 unsigned char PCXHR_DSP_RESET_GPO_MASK ;
 int PCXHR_DSP_RESET_GPO_OFFSET ;
 int PCXHR_OUTPB (struct pcxhr_mgr*,int ,unsigned char) ;

int hr222_write_gpo(struct pcxhr_mgr *mgr, int value)
{
 unsigned char reg = mgr->dsp_reset & ~PCXHR_DSP_RESET_GPO_MASK;

 reg |= (unsigned char)(value << PCXHR_DSP_RESET_GPO_OFFSET) &
        PCXHR_DSP_RESET_GPO_MASK;

 PCXHR_OUTPB(mgr, PCXHR_DSP_RESET, reg);
 mgr->dsp_reset = reg;
 return 0;
}
