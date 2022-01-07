
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_als300_substream_data {int dummy; } ;
struct snd_als300 {int * capture_substream; } ;
struct TYPE_2__ {struct snd_als300_substream_data* private_data; } ;


 int kfree (struct snd_als300_substream_data*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_als300* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_als300_capture_close(struct snd_pcm_substream *substream)
{
 struct snd_als300 *chip = snd_pcm_substream_chip(substream);
 struct snd_als300_substream_data *data;

 data = substream->runtime->private_data;
 kfree(data);
 chip->capture_substream = ((void*)0);
 snd_pcm_lib_free_pages(substream);
 return 0;
}
