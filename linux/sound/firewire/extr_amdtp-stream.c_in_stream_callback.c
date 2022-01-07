
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fw_iso_packet {int member_0; } ;
struct fw_iso_context {int dummy; } ;
struct TYPE_3__ {size_t ctx_header_size; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct amdtp_stream {scalar_t__ packet_index; int context; int pkt_descs; TYPE_2__ ctx_data; } ;
typedef int __be32 ;


 int EAGAIN ;
 int cancel_stream (struct amdtp_stream*) ;
 int fw_iso_context_queue_flush (int ) ;
 int generate_device_pkt_descs (struct amdtp_stream*,int ,int *,unsigned int) ;
 int process_ctx_payloads (struct amdtp_stream*,int ,unsigned int) ;
 scalar_t__ queue_in_packet (struct amdtp_stream*,struct fw_iso_packet*) ;

__attribute__((used)) static void in_stream_callback(struct fw_iso_context *context, u32 tstamp,
          size_t header_length, void *header,
          void *private_data)
{
 struct amdtp_stream *s = private_data;
 unsigned int packets;
 __be32 *ctx_header = header;
 int i;
 int err;

 if (s->packet_index < 0)
  return;


 packets = header_length / s->ctx_data.tx.ctx_header_size;

 err = generate_device_pkt_descs(s, s->pkt_descs, ctx_header, packets);
 if (err < 0) {
  if (err != -EAGAIN) {
   cancel_stream(s);
   return;
  }
 } else {
  process_ctx_payloads(s, s->pkt_descs, packets);
 }

 for (i = 0; i < packets; ++i) {
  struct fw_iso_packet params = {0};

  if (queue_in_packet(s, &params) < 0) {
   cancel_stream(s);
   return;
  }
 }

 fw_iso_context_queue_flush(s->context);
}
