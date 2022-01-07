
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pkt_desc {unsigned int cycle; unsigned int syt; unsigned int data_blocks; unsigned int data_block_counter; int ctx_payload; } ;
struct TYPE_7__ {int ctx_header_size; } ;
struct TYPE_8__ {TYPE_3__ tx; } ;
struct TYPE_6__ {TYPE_1__* packets; } ;
struct amdtp_stream {unsigned int data_block_counter; int packet_index; int flags; TYPE_4__ ctx_data; TYPE_2__ buffer; } ;
typedef int __be32 ;
struct TYPE_5__ {int buffer; } ;


 int CIP_DBC_IS_END_EVENT ;
 int QUEUE_LENGTH ;
 unsigned int compute_cycle_count (int const) ;
 int parse_ir_ctx_header (struct amdtp_stream*,unsigned int,int const*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,int) ;

__attribute__((used)) static int generate_device_pkt_descs(struct amdtp_stream *s,
         struct pkt_desc *descs,
         const __be32 *ctx_header,
         unsigned int packets)
{
 unsigned int dbc = s->data_block_counter;
 int i;
 int err;

 for (i = 0; i < packets; ++i) {
  struct pkt_desc *desc = descs + i;
  unsigned int index = (s->packet_index + i) % QUEUE_LENGTH;
  unsigned int cycle;
  unsigned int payload_length;
  unsigned int data_blocks;
  unsigned int syt;

  cycle = compute_cycle_count(ctx_header[1]);

  err = parse_ir_ctx_header(s, cycle, ctx_header, &payload_length,
       &data_blocks, &dbc, &syt, i);
  if (err < 0)
   return err;

  desc->cycle = cycle;
  desc->syt = syt;
  desc->data_blocks = data_blocks;
  desc->data_block_counter = dbc;
  desc->ctx_payload = s->buffer.packets[index].buffer;

  if (!(s->flags & CIP_DBC_IS_END_EVENT))
   dbc = (dbc + desc->data_blocks) & 0xff;

  ctx_header +=
   s->ctx_data.tx.ctx_header_size / sizeof(*ctx_header);
 }

 s->data_block_counter = dbc;

 return 0;
}
