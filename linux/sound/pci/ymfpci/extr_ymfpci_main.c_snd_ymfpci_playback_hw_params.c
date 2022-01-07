
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci_pcm {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ymfpci_pcm* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 int snd_ymfpci_pcm_voice_alloc (struct snd_ymfpci_pcm*,int ) ;

__attribute__((used)) static int snd_ymfpci_playback_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *hw_params)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ymfpci_pcm *ypcm = runtime->private_data;
 int err;

 if ((err = snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(hw_params))) < 0)
  return err;
 if ((err = snd_ymfpci_pcm_voice_alloc(ypcm, params_channels(hw_params))) < 0)
  return err;
 return 0;
}
