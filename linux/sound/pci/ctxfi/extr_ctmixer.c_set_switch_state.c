
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_mixer {int switch_state; } ;
typedef enum CTALSA_MIXER_CTL { ____Placeholder_CTALSA_MIXER_CTL } CTALSA_MIXER_CTL ;


 int SWH_MIXER_START ;

__attribute__((used)) static void
set_switch_state(struct ct_mixer *mixer,
   enum CTALSA_MIXER_CTL type, unsigned char state)
{
 if (state)
  mixer->switch_state |= (0x1 << (type - SWH_MIXER_START));
 else
  mixer->switch_state &= ~(0x1 << (type - SWH_MIXER_START));
}
