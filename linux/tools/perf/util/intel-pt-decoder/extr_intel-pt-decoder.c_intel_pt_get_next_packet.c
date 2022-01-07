
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct intel_pt_decoder {scalar_t__ last_packet_type; int pos; int pkt_step; int buf; scalar_t__ len; int pkt_len; int next_buf; int pkt_ctx; TYPE_1__ packet; int prev_pkt_ctx; } ;


 int BITS_PER_LONG ;
 int INTEL_PT_NEED_MORE_BYTES ;
 scalar_t__ INTEL_PT_PAD ;
 scalar_t__ INTEL_PT_PKT_MAX_SZ ;
 int intel_pt_bad_packet (struct intel_pt_decoder*) ;
 int intel_pt_decoder_log_packet (struct intel_pt_decoder*) ;
 int intel_pt_get_next_data (struct intel_pt_decoder*,int) ;
 int intel_pt_get_packet (int,scalar_t__,TYPE_1__*,int *) ;
 int intel_pt_get_split_packet (struct intel_pt_decoder*) ;

__attribute__((used)) static int intel_pt_get_next_packet(struct intel_pt_decoder *decoder)
{
 int ret;

 decoder->last_packet_type = decoder->packet.type;

 do {
  decoder->pos += decoder->pkt_step;
  decoder->buf += decoder->pkt_step;
  decoder->len -= decoder->pkt_step;

  if (!decoder->len) {
   ret = intel_pt_get_next_data(decoder, 0);
   if (ret)
    return ret;
  }

  decoder->prev_pkt_ctx = decoder->pkt_ctx;
  ret = intel_pt_get_packet(decoder->buf, decoder->len,
       &decoder->packet, &decoder->pkt_ctx);
  if (ret == INTEL_PT_NEED_MORE_BYTES && BITS_PER_LONG == 32 &&
      decoder->len < INTEL_PT_PKT_MAX_SZ && !decoder->next_buf) {
   ret = intel_pt_get_split_packet(decoder);
   if (ret < 0)
    return ret;
  }
  if (ret <= 0)
   return intel_pt_bad_packet(decoder);

  decoder->pkt_len = ret;
  decoder->pkt_step = ret;
  intel_pt_decoder_log_packet(decoder);
 } while (decoder->packet.type == INTEL_PT_PAD);

 return 0;
}
