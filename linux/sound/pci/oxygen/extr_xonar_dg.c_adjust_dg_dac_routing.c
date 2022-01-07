
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {struct dg* model_data; } ;
struct dg {int output_sel; } ;


 unsigned int OXYGEN_PLAY_DAC0_SOURCE_MASK ;
 int OXYGEN_PLAY_DAC0_SOURCE_SHIFT ;
 int OXYGEN_PLAY_DAC1_SOURCE_MASK ;
 int OXYGEN_PLAY_DAC1_SOURCE_SHIFT ;
 int OXYGEN_PLAY_DAC2_SOURCE_MASK ;
 int OXYGEN_PLAY_DAC2_SOURCE_SHIFT ;
 int OXYGEN_PLAY_DAC3_SOURCE_MASK ;
 int OXYGEN_PLAY_DAC3_SOURCE_SHIFT ;
 int OXYGEN_PLAY_MUTE01 ;
 int OXYGEN_PLAY_MUTE23 ;
 int OXYGEN_PLAY_MUTE45 ;
 int OXYGEN_PLAY_MUTE67 ;
 int OXYGEN_PLAY_MUTE_MASK ;
 int OXYGEN_PLAY_ROUTING ;



 int oxygen_write8_masked (struct oxygen*,int ,int,int ) ;
 unsigned int shift_bits (unsigned int,int ,int ,int ) ;

unsigned int adjust_dg_dac_routing(struct oxygen *chip,
       unsigned int play_routing)
{
 struct dg *data = chip->model_data;

 switch (data->output_sel) {
 case 130:
 case 129:
  oxygen_write8_masked(chip, OXYGEN_PLAY_ROUTING,
   OXYGEN_PLAY_MUTE23 | OXYGEN_PLAY_MUTE45 |
   OXYGEN_PLAY_MUTE67, OXYGEN_PLAY_MUTE_MASK);
  break;
 case 128:
  oxygen_write8_masked(chip, OXYGEN_PLAY_ROUTING,
   OXYGEN_PLAY_MUTE01, OXYGEN_PLAY_MUTE_MASK);
  break;
 }
 return (play_routing & OXYGEN_PLAY_DAC0_SOURCE_MASK) |
        shift_bits(play_routing,
     OXYGEN_PLAY_DAC2_SOURCE_SHIFT,
     OXYGEN_PLAY_DAC1_SOURCE_SHIFT,
     OXYGEN_PLAY_DAC1_SOURCE_MASK) |
        shift_bits(play_routing,
     OXYGEN_PLAY_DAC1_SOURCE_SHIFT,
     OXYGEN_PLAY_DAC2_SOURCE_SHIFT,
     OXYGEN_PLAY_DAC2_SOURCE_MASK) |
        shift_bits(play_routing,
     OXYGEN_PLAY_DAC0_SOURCE_SHIFT,
     OXYGEN_PLAY_DAC3_SOURCE_SHIFT,
     OXYGEN_PLAY_DAC3_SOURCE_MASK);
}
