
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 unsigned int OXYGEN_PLAY_DAC0_SOURCE_MASK ;
 unsigned int OXYGEN_PLAY_DAC1_SOURCE_MASK ;

__attribute__((used)) static unsigned int se6x_adjust_dac_routing(struct oxygen *chip,
         unsigned int play_routing)
{

 return ( play_routing & OXYGEN_PLAY_DAC0_SOURCE_MASK) |
        ((play_routing << 2) & OXYGEN_PLAY_DAC1_SOURCE_MASK);
}
