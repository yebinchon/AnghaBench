
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_iso_packet {int skip; int payload_length; int header_length; } ;
struct TYPE_3__ {int max_ctx_payload_length; int ctx_header_size; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct amdtp_stream {TYPE_2__ ctx_data; } ;


 int queue_packet (struct amdtp_stream*,struct fw_iso_packet*) ;

__attribute__((used)) static inline int queue_in_packet(struct amdtp_stream *s,
      struct fw_iso_packet *params)
{

 params->header_length = s->ctx_data.tx.ctx_header_size;
 params->payload_length = s->ctx_data.tx.max_ctx_payload_length;
 params->skip = 0;
 return queue_packet(s, params);
}
