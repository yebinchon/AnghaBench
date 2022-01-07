
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fw_iso_packet {scalar_t__ sy; int tag; int interrupt; } ;
struct TYPE_5__ {TYPE_1__* packets; int iso_buffer; } ;
struct amdtp_stream {int packet_index; TYPE_3__* unit; TYPE_2__ buffer; int context; int tag; } ;
struct TYPE_6__ {int device; } ;
struct TYPE_4__ {int offset; } ;


 int INTERRUPT_INTERVAL ;
 int IS_ALIGNED (int,int ) ;
 size_t QUEUE_LENGTH ;
 int dev_err (int *,char*,int) ;
 int fw_iso_context_queue (int ,struct fw_iso_packet*,int *,int ) ;

__attribute__((used)) static int queue_packet(struct amdtp_stream *s, struct fw_iso_packet *params)
{
 int err;

 params->interrupt = IS_ALIGNED(s->packet_index + 1, INTERRUPT_INTERVAL);
 params->tag = s->tag;
 params->sy = 0;

 err = fw_iso_context_queue(s->context, params, &s->buffer.iso_buffer,
       s->buffer.packets[s->packet_index].offset);
 if (err < 0) {
  dev_err(&s->unit->device, "queueing error: %d\n", err);
  goto end;
 }

 if (++s->packet_index >= QUEUE_LENGTH)
  s->packet_index = 0;
end:
 return err;
}
