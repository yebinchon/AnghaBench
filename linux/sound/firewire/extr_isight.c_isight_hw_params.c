
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct isight* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct isight {int pcm_active; } ;


 int WRITE_ONCE (int ,int) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_alloc_vmalloc_buffer (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int isight_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *hw_params)
{
 struct isight *isight = substream->private_data;
 int err;

 err = snd_pcm_lib_alloc_vmalloc_buffer(substream,
            params_buffer_bytes(hw_params));
 if (err < 0)
  return err;

 WRITE_ONCE(isight->pcm_active, 1);

 return 0;
}
