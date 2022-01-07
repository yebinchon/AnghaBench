
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_BTN_4 ;
 int SND_JACK_BTN_5 ;

__attribute__((used)) static int nau8824_button_decode(int value)
{
 int buttons = 0;




 if (value & BIT(0))
  buttons |= SND_JACK_BTN_0;
 if (value & BIT(1))
  buttons |= SND_JACK_BTN_1;
 if (value & BIT(2))
  buttons |= SND_JACK_BTN_2;
 if (value & BIT(3))
  buttons |= SND_JACK_BTN_3;
 if (value & BIT(4))
  buttons |= SND_JACK_BTN_4;
 if (value & BIT(5))
  buttons |= SND_JACK_BTN_5;

 return buttons;
}
