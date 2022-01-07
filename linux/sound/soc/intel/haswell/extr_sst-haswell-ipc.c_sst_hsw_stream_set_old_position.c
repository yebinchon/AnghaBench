
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_hsw_stream {int old_position; } ;
struct sst_hsw {int dummy; } ;
typedef int snd_pcm_uframes_t ;



void sst_hsw_stream_set_old_position(struct sst_hsw *hsw,
 struct sst_hsw_stream *stream, snd_pcm_uframes_t val)
{
 stream->old_position = val;
}
