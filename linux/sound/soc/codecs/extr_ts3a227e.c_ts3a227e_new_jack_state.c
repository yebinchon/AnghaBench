
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts3a227e {int plugged; int mic_present; int regmap; scalar_t__ buttons_held; } ;


 unsigned int EITHER_MIC_MASK ;
 unsigned int JACK_INSERTED ;
 int KP_ENABLE ;
 int TS3A227E_REG_SETTING_2 ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void ts3a227e_new_jack_state(struct ts3a227e *ts3a227e, unsigned acc_reg)
{
 bool plugged, mic_present;

 plugged = !!(acc_reg & JACK_INSERTED);
 mic_present = plugged && !!(acc_reg & EITHER_MIC_MASK);

 ts3a227e->plugged = plugged;

 if (mic_present != ts3a227e->mic_present) {
  ts3a227e->mic_present = mic_present;
  ts3a227e->buttons_held = 0;
  if (mic_present) {

   regmap_update_bits(ts3a227e->regmap,
        TS3A227E_REG_SETTING_2,
        KP_ENABLE, KP_ENABLE);
  }
 }
}
