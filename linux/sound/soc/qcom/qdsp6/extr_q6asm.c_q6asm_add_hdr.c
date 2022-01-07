
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct audio_client {int session; } ;
struct apr_hdr {int src_port; int dest_port; int pkt_size; int token; int hdr_field; } ;


 int APR_SEQ_CMD_HDR_FIELD ;

__attribute__((used)) static inline void q6asm_add_hdr(struct audio_client *ac, struct apr_hdr *hdr,
     uint32_t pkt_size, bool cmd_flg,
     uint32_t stream_id)
{
 hdr->hdr_field = APR_SEQ_CMD_HDR_FIELD;
 hdr->src_port = ((ac->session << 8) & 0xFF00) | (stream_id);
 hdr->dest_port = ((ac->session << 8) & 0xFF00) | (stream_id);
 hdr->pkt_size = pkt_size;
 if (cmd_flg)
  hdr->token = ac->session;
}
