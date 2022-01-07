
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_iso_packet {unsigned int payload_length; int header_length; scalar_t__ header; } ;
struct amdtp_stream {unsigned int data_block_quadlets; int flags; } ;
typedef int __be32 ;


 int CIP_NO_HEADER ;
 int generate_cip_header (struct amdtp_stream*,int *,unsigned int,unsigned int) ;
 int trace_amdtp_packet (struct amdtp_stream*,unsigned int,int *,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void build_it_pkt_header(struct amdtp_stream *s, unsigned int cycle,
    struct fw_iso_packet *params,
    unsigned int data_blocks,
    unsigned int data_block_counter,
    unsigned int syt, unsigned int index)
{
 unsigned int payload_length;
 __be32 *cip_header;

 payload_length = data_blocks * sizeof(__be32) * s->data_block_quadlets;
 params->payload_length = payload_length;

 if (!(s->flags & CIP_NO_HEADER)) {
  cip_header = (__be32 *)params->header;
  generate_cip_header(s, cip_header, data_block_counter, syt);
  params->header_length = 2 * sizeof(__be32);
  payload_length += params->header_length;
 } else {
  cip_header = ((void*)0);
 }

 trace_amdtp_packet(s, cycle, cip_header, payload_length, data_blocks,
      data_block_counter, index);
}
