
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int chip_status; scalar_t__ clock_source; int freq_detected; int uer_detected; } ;


 scalar_t__ INTERNAL_QUARTZ ;
 int VX_STAT_IS_STALE ;
 int vx_read_uer_status (struct vx_core*,int *) ;

int vx_change_frequency(struct vx_core *chip)
{
 int freq;

 if (chip->chip_status & VX_STAT_IS_STALE)
  return 0;

 if (chip->clock_source == INTERNAL_QUARTZ)
  return 0;



 freq = vx_read_uer_status(chip, &chip->uer_detected);
 if (freq < 0)
  return freq;




 if (freq == 48000 || freq == 44100 || freq == 32000)
  chip->freq_detected = freq;

 return 0;
}
