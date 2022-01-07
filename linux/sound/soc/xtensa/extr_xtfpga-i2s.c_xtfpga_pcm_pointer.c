
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtfpga_i2s {int tx_ptr; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ buffer_size; struct xtfpga_i2s* private_data; } ;
typedef scalar_t__ snd_pcm_uframes_t ;


 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static snd_pcm_uframes_t xtfpga_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct xtfpga_i2s *i2s = runtime->private_data;
 snd_pcm_uframes_t pos = READ_ONCE(i2s->tx_ptr);

 return pos < runtime->buffer_size ? pos : 0;
}
