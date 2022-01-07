
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_compr_tstamp {int copied_total; int byte_offset; } ;
struct snd_compr_stream {scalar_t__ direction; TYPE_1__* runtime; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* pointer ) (struct snd_compr_stream*,struct snd_compr_tstamp*) ;} ;
struct TYPE_3__ {int total_bytes_available; int total_bytes_transferred; } ;


 int ENOTSUPP ;
 scalar_t__ SND_COMPRESS_PLAYBACK ;
 int pr_debug (char*,int ,int ) ;
 int stub1 (struct snd_compr_stream*,struct snd_compr_tstamp*) ;

__attribute__((used)) static int snd_compr_update_tstamp(struct snd_compr_stream *stream,
  struct snd_compr_tstamp *tstamp)
{
 if (!stream->ops->pointer)
  return -ENOTSUPP;
 stream->ops->pointer(stream, tstamp);
 pr_debug("dsp consumed till %d total %d bytes\n",
  tstamp->byte_offset, tstamp->copied_total);
 if (stream->direction == SND_COMPRESS_PLAYBACK)
  stream->runtime->total_bytes_transferred = tstamp->copied_total;
 else
  stream->runtime->total_bytes_available = tstamp->copied_total;
 return 0;
}
