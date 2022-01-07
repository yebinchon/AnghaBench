
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int master; int inc; int mod; } ;
struct snd_hal2 {TYPE_1__ adc; } ;


 int H2I_BRES2_C1 ;
 int H2I_BRES2_C2 ;
 int hal2_i_write16 (struct snd_hal2*,int ,int) ;
 int hal2_i_write32 (struct snd_hal2*,int ,int) ;

__attribute__((used)) static void hal2_set_adc_rate(struct snd_hal2 *hal2)
{
 unsigned int master = hal2->adc.master;
 int inc = hal2->adc.inc;
 int mod = hal2->adc.mod;

 hal2_i_write16(hal2, H2I_BRES2_C1, (master == 44100) ? 1 : 0);
 hal2_i_write32(hal2, H2I_BRES2_C2,
         ((0xffff & (inc - mod - 1)) << 16) | inc);
}
