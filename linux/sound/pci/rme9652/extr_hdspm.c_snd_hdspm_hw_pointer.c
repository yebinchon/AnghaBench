
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hdspm {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 int hdspm_hw_pointer (struct hdspm*) ;
 struct hdspm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_hdspm_hw_pointer(struct snd_pcm_substream
           *substream)
{
 struct hdspm *hdspm = snd_pcm_substream_chip(substream);
 return hdspm_hw_pointer(hdspm);
}
