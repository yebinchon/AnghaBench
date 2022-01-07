
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdf; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct amdtp_stream {int sfc; unsigned int syt_interval; TYPE_2__ ctx_data; struct amdtp_dot* protocol; } ;
struct amdtp_dot {unsigned int pcm_channels; unsigned int midi_fifo_limit; } ;


 int AMDTP_FDF_AM824 ;
 int EBUSY ;
 unsigned int MIDI_BYTES_PER_SECOND ;
 scalar_t__ amdtp_stream_running (struct amdtp_stream*) ;
 int amdtp_stream_set_parameters (struct amdtp_stream*,unsigned int,unsigned int) ;

int amdtp_dot_set_parameters(struct amdtp_stream *s, unsigned int rate,
        unsigned int pcm_channels)
{
 struct amdtp_dot *p = s->protocol;
 int err;

 if (amdtp_stream_running(s))
  return -EBUSY;





 err = amdtp_stream_set_parameters(s, rate, pcm_channels + 1);
 if (err < 0)
  return err;

 s->ctx_data.rx.fdf = AMDTP_FDF_AM824 | s->sfc;

 p->pcm_channels = pcm_channels;







 p->midi_fifo_limit = rate - MIDI_BYTES_PER_SECOND * s->syt_interval + 1;

 return 0;
}
