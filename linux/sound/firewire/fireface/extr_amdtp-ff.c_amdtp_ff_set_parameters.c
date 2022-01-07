
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {struct amdtp_ff* protocol; } ;
struct amdtp_ff {unsigned int pcm_channels; } ;


 int EBUSY ;
 scalar_t__ amdtp_stream_running (struct amdtp_stream*) ;
 int amdtp_stream_set_parameters (struct amdtp_stream*,unsigned int,unsigned int) ;

int amdtp_ff_set_parameters(struct amdtp_stream *s, unsigned int rate,
       unsigned int pcm_channels)
{
 struct amdtp_ff *p = s->protocol;
 unsigned int data_channels;

 if (amdtp_stream_running(s))
  return -EBUSY;

 p->pcm_channels = pcm_channels;
 data_channels = pcm_channels;

 return amdtp_stream_set_parameters(s, rate, data_channels);
}
