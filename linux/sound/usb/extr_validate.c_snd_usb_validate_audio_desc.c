
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int audio_validators ;
 int validate_desc (void*,int,int ) ;

bool snd_usb_validate_audio_desc(void *p, int protocol)
{
 return validate_desc(p, protocol, audio_validators);
}
