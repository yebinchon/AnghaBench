
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ua101 {int mutex; } ;
struct snd_pcm_substream {struct ua101* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_alloc_vmalloc_buffer (struct snd_pcm_substream*,int ) ;
 int start_usb_capture (struct ua101*) ;

__attribute__((used)) static int capture_pcm_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *hw_params)
{
 struct ua101 *ua = substream->private_data;
 int err;

 mutex_lock(&ua->mutex);
 err = start_usb_capture(ua);
 mutex_unlock(&ua->mutex);
 if (err < 0)
  return err;

 return snd_pcm_lib_alloc_vmalloc_buffer(substream,
      params_buffer_bytes(hw_params));
}
