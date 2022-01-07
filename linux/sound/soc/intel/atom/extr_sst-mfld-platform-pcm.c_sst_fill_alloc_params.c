
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct snd_sst_alloc_params_ext {int sg_count; unsigned int frag_size; scalar_t__ reserved; TYPE_2__* ring_buf_info; } ;
struct TYPE_4__ {int area; } ;
struct snd_pcm_substream {TYPE_3__* runtime; TYPE_1__ dma_buffer; } ;
typedef unsigned int ssize_t ;
typedef int snd_pcm_uframes_t ;
struct TYPE_6__ {unsigned int channels; int period_size; } ;
struct TYPE_5__ {unsigned int size; int addr; } ;


 unsigned int samples_to_bytes (TYPE_3__*,int ) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int virt_to_phys (int ) ;

__attribute__((used)) static void sst_fill_alloc_params(struct snd_pcm_substream *substream,
    struct snd_sst_alloc_params_ext *alloc_param)
{
 unsigned int channels;
 snd_pcm_uframes_t period_size;
 ssize_t periodbytes;
 ssize_t buffer_bytes = snd_pcm_lib_buffer_bytes(substream);
 u32 buffer_addr = virt_to_phys(substream->dma_buffer.area);

 channels = substream->runtime->channels;
 period_size = substream->runtime->period_size;
 periodbytes = samples_to_bytes(substream->runtime, period_size);
 alloc_param->ring_buf_info[0].addr = buffer_addr;
 alloc_param->ring_buf_info[0].size = buffer_bytes;
 alloc_param->sg_count = 1;
 alloc_param->reserved = 0;
 alloc_param->frag_size = periodbytes * channels;

}
