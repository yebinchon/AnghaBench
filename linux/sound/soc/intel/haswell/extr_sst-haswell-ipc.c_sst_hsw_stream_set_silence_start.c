
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_hsw_stream {int play_silence; } ;
struct sst_hsw {int dummy; } ;



void sst_hsw_stream_set_silence_start(struct sst_hsw *hsw,
 struct sst_hsw_stream *stream, bool val)
{
 stream->play_silence = val;
}
