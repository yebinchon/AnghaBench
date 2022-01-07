
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdf; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct amdtp_stream {int sfc; unsigned int syt_interval; TYPE_2__ ctx_data; struct amdtp_am824* protocol; } ;
struct amdtp_am824 {unsigned int pcm_channels; unsigned int midi_ports; int frame_multiplier; unsigned int* pcm_positions; unsigned int midi_position; unsigned int midi_fifo_limit; } ;


 unsigned int AM824_MAX_CHANNELS_FOR_MIDI ;
 unsigned int AM824_MAX_CHANNELS_FOR_PCM ;
 int AMDTP_FDF_AM824 ;
 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int EINVAL ;
 unsigned int MIDI_BYTES_PER_SECOND ;
 scalar_t__ WARN_ON (int) ;
 int amdtp_stream_running (struct amdtp_stream*) ;
 int amdtp_stream_set_parameters (struct amdtp_stream*,unsigned int,unsigned int) ;

int amdtp_am824_set_parameters(struct amdtp_stream *s, unsigned int rate,
          unsigned int pcm_channels,
          unsigned int midi_ports,
          bool double_pcm_frames)
{
 struct amdtp_am824 *p = s->protocol;
 unsigned int midi_channels;
 unsigned int i;
 int err;

 if (amdtp_stream_running(s))
  return -EINVAL;

 if (pcm_channels > AM824_MAX_CHANNELS_FOR_PCM)
  return -EINVAL;

 midi_channels = DIV_ROUND_UP(midi_ports, 8);
 if (midi_channels > AM824_MAX_CHANNELS_FOR_MIDI)
  return -EINVAL;

 if (WARN_ON(amdtp_stream_running(s)) ||
     WARN_ON(pcm_channels > AM824_MAX_CHANNELS_FOR_PCM) ||
     WARN_ON(midi_channels > AM824_MAX_CHANNELS_FOR_MIDI))
  return -EINVAL;

 err = amdtp_stream_set_parameters(s, rate,
       pcm_channels + midi_channels);
 if (err < 0)
  return err;

 s->ctx_data.rx.fdf = AMDTP_FDF_AM824 | s->sfc;

 p->pcm_channels = pcm_channels;
 p->midi_ports = midi_ports;






 if (double_pcm_frames)
  p->frame_multiplier = 2;
 else
  p->frame_multiplier = 1;


 for (i = 0; i < pcm_channels; i++)
  p->pcm_positions[i] = i;
 p->midi_position = p->pcm_channels;







 p->midi_fifo_limit = rate - MIDI_BYTES_PER_SECOND * s->syt_interval + 1;

 return 0;
}
