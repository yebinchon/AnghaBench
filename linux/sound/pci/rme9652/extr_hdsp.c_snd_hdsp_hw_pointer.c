
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hdsp {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 int hdsp_hw_pointer (struct hdsp*) ;
 struct hdsp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_hdsp_hw_pointer(struct snd_pcm_substream *substream)
{
 struct hdsp *hdsp = snd_pcm_substream_chip(substream);
 return hdsp_hw_pointer(hdsp);
}
