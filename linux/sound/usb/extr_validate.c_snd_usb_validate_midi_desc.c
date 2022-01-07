
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UAC_VERSION_1 ;
 int midi_validators ;
 int validate_desc (void*,int ,int ) ;

bool snd_usb_validate_midi_desc(void *p)
{
 return validate_desc(p, UAC_VERSION_1, midi_validators);
}
