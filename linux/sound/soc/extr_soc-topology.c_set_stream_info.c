
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_tplg_stream_caps {int sig_bits; int formats; int rate_max; int rate_min; int rates; int channels_max; int channels_min; int name; } ;
struct snd_soc_pcm_stream {void* sig_bits; int formats; void* rate_max; void* rate_min; void* rates; void* channels_max; void* channels_min; int stream_name; } ;


 int GFP_KERNEL ;
 int kstrdup (int ,int ) ;
 void* le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void set_stream_info(struct snd_soc_pcm_stream *stream,
 struct snd_soc_tplg_stream_caps *caps)
{
 stream->stream_name = kstrdup(caps->name, GFP_KERNEL);
 stream->channels_min = le32_to_cpu(caps->channels_min);
 stream->channels_max = le32_to_cpu(caps->channels_max);
 stream->rates = le32_to_cpu(caps->rates);
 stream->rate_min = le32_to_cpu(caps->rate_min);
 stream->rate_max = le32_to_cpu(caps->rate_max);
 stream->formats = le64_to_cpu(caps->formats);
 stream->sig_bits = le32_to_cpu(caps->sig_bits);
}
