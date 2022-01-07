
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct snd_korg1212 {int channels; } ;


 int bytes_to_frames (struct snd_pcm_runtime*,unsigned long) ;
 int snd_korg1212_silence (struct snd_korg1212*,int ,int ,int ,int) ;
 struct snd_korg1212* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_korg1212_playback_silence(struct snd_pcm_substream *substream,
                           int channel,
                           unsigned long pos,
                           unsigned long count)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
        struct snd_korg1212 *korg1212 = snd_pcm_substream_chip(substream);

 return snd_korg1212_silence(korg1212, bytes_to_frames(runtime, pos),
        bytes_to_frames(runtime, count),
        0, korg1212->channels * 2);
}
