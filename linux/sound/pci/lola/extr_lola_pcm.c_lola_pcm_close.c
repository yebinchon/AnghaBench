
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct lola_stream {scalar_t__ opened; struct snd_pcm_substream* substream; } ;
struct lola {scalar_t__ ref_count_rate; int open_mutex; scalar_t__ sample_rate; } ;


 struct lola_stream* lola_get_stream (struct snd_pcm_substream*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct lola* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int lola_pcm_close(struct snd_pcm_substream *substream)
{
 struct lola *chip = snd_pcm_substream_chip(substream);
 struct lola_stream *str = lola_get_stream(substream);

 mutex_lock(&chip->open_mutex);
 if (str->substream == substream) {
  str->substream = ((void*)0);
  str->opened = 0;
 }
 if (--chip->ref_count_rate == 0) {

  chip->sample_rate = 0;
 }
 mutex_unlock(&chip->open_mutex);
 return 0;
}
