
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int packet_index; int pcm_buffer_pointer; } ;


 int SNDRV_PCM_POS_XRUN ;
 int WRITE_ONCE (int ,int ) ;
 int amdtp_stream_pcm_abort (struct amdtp_stream*) ;
 scalar_t__ in_interrupt () ;

__attribute__((used)) static inline void cancel_stream(struct amdtp_stream *s)
{
 s->packet_index = -1;
 if (in_interrupt())
  amdtp_stream_pcm_abort(s);
 WRITE_ONCE(s->pcm_buffer_pointer, SNDRV_PCM_POS_XRUN);
}
