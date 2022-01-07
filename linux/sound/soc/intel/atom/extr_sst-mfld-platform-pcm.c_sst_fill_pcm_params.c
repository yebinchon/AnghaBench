
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {int channel_map; scalar_t__ reserved2; scalar_t__ use_offload_path; int sfreq; int pcm_wd_sz; scalar_t__ num_chan; } ;
struct TYPE_6__ {TYPE_2__ pcm_params; } ;
struct snd_sst_stream_params {TYPE_3__ uc; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_4__ {int rate; int sample_bits; int channels; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void sst_fill_pcm_params(struct snd_pcm_substream *substream,
    struct snd_sst_stream_params *param)
{
 param->uc.pcm_params.num_chan = (u8) substream->runtime->channels;
 param->uc.pcm_params.pcm_wd_sz = substream->runtime->sample_bits;
 param->uc.pcm_params.sfreq = substream->runtime->rate;


 param->uc.pcm_params.use_offload_path = 0;
 param->uc.pcm_params.reserved2 = 0;
 memset(param->uc.pcm_params.channel_map, 0, sizeof(u8));

}
