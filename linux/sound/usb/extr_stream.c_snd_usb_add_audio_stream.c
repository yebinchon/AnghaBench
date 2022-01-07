
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int dummy; } ;
struct audioformat {int dummy; } ;


 int __snd_usb_add_audio_stream (struct snd_usb_audio*,int,struct audioformat*,int *) ;

int snd_usb_add_audio_stream(struct snd_usb_audio *chip,
        int stream,
        struct audioformat *fp)
{
 return __snd_usb_add_audio_stream(chip, stream, fp, ((void*)0));
}
