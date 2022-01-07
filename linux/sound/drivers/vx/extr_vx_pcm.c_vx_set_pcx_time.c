
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
typedef int pcx_time_t ;


 unsigned int MASK_DSP_WORD ;
 unsigned int PCX_TIME_HI_MASK ;

__attribute__((used)) static void vx_set_pcx_time(struct vx_core *chip, pcx_time_t *pc_time,
       unsigned int *dsp_time)
{
 dsp_time[0] = (unsigned int)((*pc_time) >> 24) & PCX_TIME_HI_MASK;
 dsp_time[1] = (unsigned int)(*pc_time) & MASK_DSP_WORD;
}
