
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct ct_atc_pcm {int dummy; } ;
struct ct_atc {int (* pcm_release_resources ) (struct ct_atc*,struct ct_atc_pcm*) ;} ;
struct TYPE_2__ {struct ct_atc_pcm* private_data; } ;


 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct ct_atc* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct ct_atc*,struct ct_atc_pcm*) ;

__attribute__((used)) static int ct_pcm_hw_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *hw_params)
{
 struct ct_atc *atc = snd_pcm_substream_chip(substream);
 struct ct_atc_pcm *apcm = substream->runtime->private_data;
 int err;

 err = snd_pcm_lib_malloc_pages(substream,
     params_buffer_bytes(hw_params));
 if (err < 0)
  return err;

 atc->pcm_release_resources(atc, apcm);
 return err;
}
