
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_ice1712 {int open_mutex; struct snd_pcm_substream** pcm_reserved; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_vt1724_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 int i;

 mutex_lock(&ice->open_mutex);

 for (i = 0; i < 3; i++)
  if (ice->pcm_reserved[i] == substream)
   ice->pcm_reserved[i] = ((void*)0);
 mutex_unlock(&ice->open_mutex);
 return snd_pcm_lib_free_pages(substream);
}
