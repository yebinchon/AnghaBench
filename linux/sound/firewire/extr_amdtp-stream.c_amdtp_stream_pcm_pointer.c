
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int pcm_buffer_pointer; int context; } ;


 unsigned long READ_ONCE (int ) ;
 scalar_t__ amdtp_stream_running (struct amdtp_stream*) ;
 int fw_iso_context_flush_completions (int ) ;
 int in_interrupt () ;

unsigned long amdtp_stream_pcm_pointer(struct amdtp_stream *s)
{
 if (!in_interrupt() && amdtp_stream_running(s))
  fw_iso_context_flush_completions(s->context);

 return READ_ONCE(s->pcm_buffer_pointer);
}
