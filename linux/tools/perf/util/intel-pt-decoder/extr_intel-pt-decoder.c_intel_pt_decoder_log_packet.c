
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {int buf; int pos; int pkt_len; int packet; } ;


 int intel_pt_log_packet (int *,int ,int ,int ) ;

__attribute__((used)) static void intel_pt_decoder_log_packet(struct intel_pt_decoder *decoder)
{
 intel_pt_log_packet(&decoder->packet, decoder->pkt_len, decoder->pos,
       decoder->buf);
}
