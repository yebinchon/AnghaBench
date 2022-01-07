
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ct_atc {int card; int mixer; int (* select_mic_in ) (struct ct_atc*) ;int (* select_line_in ) (struct ct_atc*) ;} ;
typedef enum CTALSA_MIXER_CTL { ____Placeholder_CTALSA_MIXER_CTL } CTALSA_MIXER_CTL ;
struct TYPE_2__ {int id; } ;


 int MIXER_LINEIN_C_S ;
 int MIXER_MIC_C_S ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 TYPE_1__** kctls ;
 int set_switch_state (int ,int,int ) ;
 int snd_ctl_notify (int ,int ,int *) ;
 int stub1 (struct ct_atc*) ;
 int stub2 (struct ct_atc*) ;

__attribute__((used)) static void
do_line_mic_switch(struct ct_atc *atc, enum CTALSA_MIXER_CTL type)
{

 if (MIXER_LINEIN_C_S == type) {
  atc->select_line_in(atc);
  set_switch_state(atc->mixer, MIXER_MIC_C_S, 0);
  snd_ctl_notify(atc->card, SNDRV_CTL_EVENT_MASK_VALUE,
       &kctls[1]->id);
 } else if (MIXER_MIC_C_S == type) {
  atc->select_mic_in(atc);
  set_switch_state(atc->mixer, MIXER_LINEIN_C_S, 0);
  snd_ctl_notify(atc->card, SNDRV_CTL_EVENT_MASK_VALUE,
       &kctls[0]->id);
 }
}
