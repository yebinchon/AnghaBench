
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt5651_priv {int * gpiod_hp_det; TYPE_1__* hp_jack; } ;
struct TYPE_2__ {int status; } ;


 int SND_JACK_MICROPHONE ;

__attribute__((used)) static bool rt5651_support_button_press(struct rt5651_priv *rt5651)
{
 if (!rt5651->hp_jack)
  return 0;


 return (rt5651->hp_jack->status & SND_JACK_MICROPHONE) &&
  rt5651->gpiod_hp_det == ((void*)0);
}
