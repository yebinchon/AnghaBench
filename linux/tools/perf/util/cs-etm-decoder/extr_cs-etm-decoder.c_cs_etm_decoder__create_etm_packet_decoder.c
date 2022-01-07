
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cs_etm_trace_params {int protocol; } ;
struct cs_etm_decoder {int dcd_tree; } ;
typedef int ocsd_etmv4_cfg ;
typedef int ocsd_etmv3_cfg ;





 char* OCSD_BUILTIN_DCD_ETMV3 ;
 char* OCSD_BUILTIN_DCD_ETMV4I ;
 char* OCSD_BUILTIN_DCD_PTM ;
 int OCSD_CREATE_FLG_FULL_DECODER ;
 int cs_etm_decoder__gen_etmv3_config (struct cs_etm_trace_params*,int *) ;
 int cs_etm_decoder__gen_etmv4_config (struct cs_etm_trace_params*,int *) ;
 int cs_etm_decoder__gen_trace_elem_printer ;
 scalar_t__ ocsd_dt_create_decoder (int ,char const*,int ,void*,int *) ;
 scalar_t__ ocsd_dt_set_gen_elem_outfn (int ,int ,struct cs_etm_decoder*) ;

__attribute__((used)) static int cs_etm_decoder__create_etm_packet_decoder(
     struct cs_etm_trace_params *t_params,
     struct cs_etm_decoder *decoder)
{
 const char *decoder_name;
 ocsd_etmv3_cfg config_etmv3;
 ocsd_etmv4_cfg trace_config_etmv4;
 void *trace_config;
 u8 csid;

 switch (t_params->protocol) {
 case 130:
 case 128:
  cs_etm_decoder__gen_etmv3_config(t_params, &config_etmv3);
  decoder_name = (t_params->protocol == 130) ?
       OCSD_BUILTIN_DCD_ETMV3 :
       OCSD_BUILTIN_DCD_PTM;
  trace_config = &config_etmv3;
  break;
 case 129:
  cs_etm_decoder__gen_etmv4_config(t_params, &trace_config_etmv4);
  decoder_name = OCSD_BUILTIN_DCD_ETMV4I;
  trace_config = &trace_config_etmv4;
  break;
 default:
  return -1;
 }

 if (ocsd_dt_create_decoder(decoder->dcd_tree,
         decoder_name,
         OCSD_CREATE_FLG_FULL_DECODER,
         trace_config, &csid))
  return -1;

 if (ocsd_dt_set_gen_elem_outfn(decoder->dcd_tree,
           cs_etm_decoder__gen_trace_elem_printer,
           decoder))
  return -1;

 return 0;
}
