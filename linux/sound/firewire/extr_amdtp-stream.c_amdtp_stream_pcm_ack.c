
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int context; } ;


 scalar_t__ amdtp_stream_running (struct amdtp_stream*) ;
 int fw_iso_context_flush_completions (int ) ;

int amdtp_stream_pcm_ack(struct amdtp_stream *s)
{




 if (amdtp_stream_running(s))
  fw_iso_context_flush_completions(s->context);

 return 0;
}
