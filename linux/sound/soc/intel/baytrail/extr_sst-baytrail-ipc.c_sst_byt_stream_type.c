
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int codec_type; int str_type; int operation; int time_slots; } ;
struct TYPE_4__ {TYPE_1__ str_type; } ;
struct sst_byt_stream {TYPE_2__ request; } ;
struct sst_byt {int dummy; } ;



int sst_byt_stream_type(struct sst_byt *byt, struct sst_byt_stream *stream,
   int codec_type, int stream_type, int operation)
{
 stream->request.str_type.codec_type = codec_type;
 stream->request.str_type.str_type = stream_type;
 stream->request.str_type.operation = operation;
 stream->request.str_type.time_slots = 0xc;

 return 0;
}
