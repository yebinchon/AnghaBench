
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pkt_desc {unsigned int data_blocks; unsigned int data_block_counter; int ctx_payload; int syt; int cycle; } ;
struct TYPE_4__ {TYPE_1__* packets; } ;
struct amdtp_stream {unsigned int data_block_counter; int packet_index; int flags; TYPE_2__ buffer; } ;
typedef int __be32 ;
struct TYPE_3__ {int buffer; } ;


 int CIP_DBC_IS_END_EVENT ;
 int QUEUE_LENGTH ;
 unsigned int calculate_data_blocks (struct amdtp_stream*,int ) ;
 int calculate_syt (struct amdtp_stream*,int ) ;
 int compute_it_cycle (int const) ;

__attribute__((used)) static void generate_ideal_pkt_descs(struct amdtp_stream *s,
         struct pkt_desc *descs,
         const __be32 *ctx_header,
         unsigned int packets)
{
 unsigned int dbc = s->data_block_counter;
 int i;

 for (i = 0; i < packets; ++i) {
  struct pkt_desc *desc = descs + i;
  unsigned int index = (s->packet_index + i) % QUEUE_LENGTH;

  desc->cycle = compute_it_cycle(*ctx_header);
  desc->syt = calculate_syt(s, desc->cycle);
  desc->data_blocks = calculate_data_blocks(s, desc->syt);

  if (s->flags & CIP_DBC_IS_END_EVENT)
   dbc = (dbc + desc->data_blocks) & 0xff;

  desc->data_block_counter = dbc;

  if (!(s->flags & CIP_DBC_IS_END_EVENT))
   dbc = (dbc + desc->data_blocks) & 0xff;

  desc->ctx_payload = s->buffer.packets[index].buffer;

  ++ctx_header;
 }

 s->data_block_counter = dbc;
}
