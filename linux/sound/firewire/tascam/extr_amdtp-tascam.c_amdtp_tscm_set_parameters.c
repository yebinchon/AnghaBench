
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_tscm {unsigned int pcm_channels; } ;
struct amdtp_stream {scalar_t__ direction; struct amdtp_tscm* protocol; } ;


 scalar_t__ AMDTP_IN_STREAM ;
 int EBUSY ;
 scalar_t__ amdtp_stream_running (struct amdtp_stream*) ;
 int amdtp_stream_set_parameters (struct amdtp_stream*,unsigned int,unsigned int) ;

int amdtp_tscm_set_parameters(struct amdtp_stream *s, unsigned int rate)
{
 struct amdtp_tscm *p = s->protocol;
 unsigned int data_channels;

 if (amdtp_stream_running(s))
  return -EBUSY;

 data_channels = p->pcm_channels;


 if (s->direction == AMDTP_IN_STREAM)
  data_channels += 2;

 return amdtp_stream_set_parameters(s, rate, data_channels);
}
