
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int callbacked; int mutex; int pkt_descs; int unit; int buffer; int context; int period_tasklet; } ;


 int ERR_PTR (int) ;
 int amdtp_stream_running (struct amdtp_stream*) ;
 int fw_iso_context_destroy (int ) ;
 int fw_iso_context_stop (int ) ;
 int iso_packets_buffer_destroy (int *,int ) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void amdtp_stream_stop(struct amdtp_stream *s)
{
 mutex_lock(&s->mutex);

 if (!amdtp_stream_running(s)) {
  mutex_unlock(&s->mutex);
  return;
 }

 tasklet_kill(&s->period_tasklet);
 fw_iso_context_stop(s->context);
 fw_iso_context_destroy(s->context);
 s->context = ERR_PTR(-1);
 iso_packets_buffer_destroy(&s->buffer, s->unit);
 kfree(s->pkt_descs);

 s->callbacked = 0;

 mutex_unlock(&s->mutex);
}
