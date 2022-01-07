
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {struct aaci* private_data; TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct aaci_runtime {int pcm_open; int cr; int fifo_bytes; TYPE_3__* pcm; } ;
struct aaci {int fifo_depth; } ;
struct TYPE_7__ {TYPE_2__* r; } ;
struct TYPE_6__ {int slots; } ;
struct TYPE_5__ {struct aaci_runtime* private_data; } ;


 int CR_COMPACT ;
 int CR_FEN ;
 int CR_SZ16 ;
 int EINVAL ;
 int aaci_pcm_hw_free (struct snd_pcm_substream*) ;
 int* channels_to_slotmask ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 unsigned int params_channels (struct snd_pcm_hw_params*) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int snd_ac97_pcm_close (TYPE_3__*) ;
 int snd_ac97_pcm_open (TYPE_3__*,unsigned int,unsigned int,int ) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int aaci_pcm_hw_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *params)
{
 struct aaci_runtime *aacirun = substream->runtime->private_data;
 unsigned int channels = params_channels(params);
 unsigned int rate = params_rate(params);
 int dbl = rate > 48000;
 int err;

 aaci_pcm_hw_free(substream);
 if (aacirun->pcm_open) {
  snd_ac97_pcm_close(aacirun->pcm);
  aacirun->pcm_open = 0;
 }


 if (dbl && channels != 2)
  return -EINVAL;

 err = snd_pcm_lib_malloc_pages(substream,
           params_buffer_bytes(params));
 if (err >= 0) {
  struct aaci *aaci = substream->private_data;

  err = snd_ac97_pcm_open(aacirun->pcm, rate, channels,
     aacirun->pcm->r[dbl].slots);

  aacirun->pcm_open = err == 0;
  aacirun->cr = CR_FEN | CR_COMPACT | CR_SZ16;
  aacirun->cr |= channels_to_slotmask[channels + dbl * 2];






  aacirun->fifo_bytes = aaci->fifo_depth * 4 / 2;
 }

 return err;
}
