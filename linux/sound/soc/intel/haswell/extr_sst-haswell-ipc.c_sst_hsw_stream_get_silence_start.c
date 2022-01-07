
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_hsw_stream {int play_silence; } ;
struct sst_hsw {int dummy; } ;



bool sst_hsw_stream_get_silence_start(struct sst_hsw *hsw,
 struct sst_hsw_stream *stream)
{
 return stream->play_silence;
}
