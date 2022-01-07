
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_stream {int * pcm; } ;
struct snd_pcm {struct snd_usb_stream* private_data; } ;


 int snd_usb_audio_stream_free (struct snd_usb_stream*) ;

__attribute__((used)) static void snd_usb_audio_pcm_free(struct snd_pcm *pcm)
{
 struct snd_usb_stream *stream = pcm->private_data;
 if (stream) {
  stream->pcm = ((void*)0);
  snd_usb_audio_stream_free(stream);
 }
}
