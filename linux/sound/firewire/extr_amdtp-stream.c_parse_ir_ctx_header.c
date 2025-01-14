
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int ctx_header_size; unsigned int max_ctx_payload_length; } ;
struct TYPE_6__ {TYPE_2__ tx; } ;
struct amdtp_stream {int flags; unsigned int data_block_quadlets; TYPE_3__ ctx_data; TYPE_1__* unit; } ;
typedef int __be32 ;
struct TYPE_4__ {int device; } ;


 int CIP_NO_HEADER ;
 int EIO ;
 unsigned int ISO_DATA_LENGTH_SHIFT ;
 unsigned int UINT_MAX ;
 unsigned int be32_to_cpu (int const) ;
 int check_cip_header (struct amdtp_stream*,int const*,unsigned int,unsigned int*,unsigned int*,unsigned int*) ;
 int dev_err (int *,char*,unsigned int,unsigned int) ;
 int trace_amdtp_packet (struct amdtp_stream*,unsigned int,int const*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int parse_ir_ctx_header(struct amdtp_stream *s, unsigned int cycle,
          const __be32 *ctx_header,
          unsigned int *payload_length,
          unsigned int *data_blocks,
          unsigned int *data_block_counter,
          unsigned int *syt, unsigned int index)
{
 const __be32 *cip_header;
 int err;

 *payload_length = be32_to_cpu(ctx_header[0]) >> ISO_DATA_LENGTH_SHIFT;
 if (*payload_length > s->ctx_data.tx.ctx_header_size +
     s->ctx_data.tx.max_ctx_payload_length) {
  dev_err(&s->unit->device,
   "Detect jumbo payload: %04x %04x\n",
   *payload_length, s->ctx_data.tx.max_ctx_payload_length);
  return -EIO;
 }

 if (!(s->flags & CIP_NO_HEADER)) {
  cip_header = ctx_header + 2;
  err = check_cip_header(s, cip_header, *payload_length,
           data_blocks, data_block_counter, syt);
  if (err < 0)
   return err;
 } else {
  cip_header = ((void*)0);
  err = 0;
  *data_blocks = *payload_length / sizeof(__be32) /
          s->data_block_quadlets;
  *syt = 0;

  if (*data_block_counter == UINT_MAX)
   *data_block_counter = 0;
 }

 trace_amdtp_packet(s, cycle, cip_header, *payload_length, *data_blocks,
      *data_block_counter, index);

 return err;
}
