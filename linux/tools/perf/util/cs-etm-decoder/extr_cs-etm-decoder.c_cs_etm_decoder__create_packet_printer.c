
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cs_etm_decoder {int dcd_tree; } ;


 int OCSD_CREATE_FLG_PACKET_PROC ;
 scalar_t__ ocsd_dt_create_decoder (int ,char const*,int ,void*,int *) ;
 scalar_t__ ocsd_dt_set_pkt_protocol_printer (int ,int ,int ) ;

__attribute__((used)) static int cs_etm_decoder__create_packet_printer(struct cs_etm_decoder *decoder,
       const char *decoder_name,
       void *trace_config)
{
 u8 csid;

 if (ocsd_dt_create_decoder(decoder->dcd_tree, decoder_name,
       OCSD_CREATE_FLG_PACKET_PROC,
       trace_config, &csid))
  return -1;

 if (ocsd_dt_set_pkt_protocol_printer(decoder->dcd_tree, csid, 0))
  return -1;

 return 0;
}
