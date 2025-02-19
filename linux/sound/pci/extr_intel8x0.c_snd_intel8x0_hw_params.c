
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct intel8x0 {scalar_t__ spdif_idx; } ;
struct ichdev {int pcm_open_flag; scalar_t__ ichd; TYPE_2__* pcm; } ;
struct TYPE_5__ {TYPE_1__* r; } ;
struct TYPE_4__ {int * codec; int slots; } ;


 int AC97_SPDIF ;
 scalar_t__ ICHD_PCMOUT ;
 struct ichdev* get_ichdev (struct snd_pcm_substream*) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_ac97_pcm_close (TYPE_2__*) ;
 int snd_ac97_pcm_open (TYPE_2__*,int,int ,int ) ;
 int snd_ac97_set_rate (int ,int ,int) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct intel8x0* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_intel8x0_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *hw_params)
{
 struct intel8x0 *chip = snd_pcm_substream_chip(substream);
 struct ichdev *ichdev = get_ichdev(substream);
 int dbl = params_rate(hw_params) > 48000;
 int err;

 err = snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(hw_params));
 if (err < 0)
  return err;
 if (ichdev->pcm_open_flag) {
  snd_ac97_pcm_close(ichdev->pcm);
  ichdev->pcm_open_flag = 0;
 }
 err = snd_ac97_pcm_open(ichdev->pcm, params_rate(hw_params),
    params_channels(hw_params),
    ichdev->pcm->r[dbl].slots);
 if (err >= 0) {
  ichdev->pcm_open_flag = 1;

  if (ichdev->ichd == ICHD_PCMOUT && chip->spdif_idx < 0)
   snd_ac97_set_rate(ichdev->pcm->r[0].codec[0], AC97_SPDIF,
       params_rate(hw_params));
 }
 return err;
}
