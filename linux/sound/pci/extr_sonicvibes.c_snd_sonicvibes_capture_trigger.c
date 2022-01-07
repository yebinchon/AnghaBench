
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 struct sonicvibes* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sonicvibes_trigger (struct sonicvibes*,int,int) ;

__attribute__((used)) static int snd_sonicvibes_capture_trigger(struct snd_pcm_substream *substream,
       int cmd)
{
 struct sonicvibes *sonic = snd_pcm_substream_chip(substream);
 return snd_sonicvibes_trigger(sonic, 2, cmd);
}
