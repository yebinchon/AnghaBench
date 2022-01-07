
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* sc ) (struct fw_iso_context*,int ,size_t,void*,struct amdtp_stream*) ;} ;
struct fw_iso_context {TYPE_1__ callback; } ;
struct amdtp_stream {int callbacked; scalar_t__ direction; int start_cycle; int callback_wait; } ;
typedef int __be32 ;


 scalar_t__ AMDTP_IN_STREAM ;
 int compute_cycle_count (int const) ;
 int compute_it_cycle (int const) ;
 int in_stream_callback (struct fw_iso_context*,int ,size_t,void*,struct amdtp_stream*) ;
 int out_stream_callback (struct fw_iso_context*,int ,size_t,void*,struct amdtp_stream*) ;
 int stub1 (struct fw_iso_context*,int ,size_t,void*,struct amdtp_stream*) ;
 int wake_up (int *) ;

__attribute__((used)) static void amdtp_stream_first_callback(struct fw_iso_context *context,
     u32 tstamp, size_t header_length,
     void *header, void *private_data)
{
 struct amdtp_stream *s = private_data;
 const __be32 *ctx_header = header;
 u32 cycle;





 s->callbacked = 1;
 wake_up(&s->callback_wait);

 if (s->direction == AMDTP_IN_STREAM) {
  cycle = compute_cycle_count(ctx_header[1]);

  context->callback.sc = in_stream_callback;
 } else {
  cycle = compute_it_cycle(*ctx_header);

  context->callback.sc = out_stream_callback;
 }

 s->start_cycle = cycle;

 context->callback.sc(context, tstamp, header_length, header, s);
}
