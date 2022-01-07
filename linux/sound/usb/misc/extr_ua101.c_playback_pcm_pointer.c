
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ua101 {int playback; } ;
struct snd_pcm_substream {struct ua101* private_data; } ;
typedef int snd_pcm_uframes_t ;


 int ua101_pcm_pointer (struct ua101*,int *) ;

__attribute__((used)) static snd_pcm_uframes_t playback_pcm_pointer(struct snd_pcm_substream *subs)
{
 struct ua101 *ua = subs->private_data;

 return ua101_pcm_pointer(ua, &ua->playback);
}
