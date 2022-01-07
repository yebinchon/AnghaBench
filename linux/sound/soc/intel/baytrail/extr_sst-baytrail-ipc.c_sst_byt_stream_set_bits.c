
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pcm_wd_sz; } ;
struct TYPE_4__ {TYPE_1__ pcm_params; } ;
struct sst_byt_stream {TYPE_2__ request; } ;
struct sst_byt {int dummy; } ;



int sst_byt_stream_set_bits(struct sst_byt *byt, struct sst_byt_stream *stream,
       int bits)
{
 stream->request.pcm_params.pcm_wd_sz = bits;
 return 0;
}
