
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_etm_trace_params {int protocol; } ;
struct cs_etm_decoder {int dummy; } ;
typedef int ocsd_etmv4_cfg ;
typedef int ocsd_etmv3_cfg ;





 char* OCSD_BUILTIN_DCD_ETMV3 ;
 char* OCSD_BUILTIN_DCD_ETMV4I ;
 char* OCSD_BUILTIN_DCD_PTM ;
 int cs_etm_decoder__create_packet_printer (struct cs_etm_decoder*,char const*,void*) ;
 int cs_etm_decoder__gen_etmv3_config (struct cs_etm_trace_params*,int *) ;
 int cs_etm_decoder__gen_etmv4_config (struct cs_etm_trace_params*,int *) ;

__attribute__((used)) static int
cs_etm_decoder__create_etm_packet_printer(struct cs_etm_trace_params *t_params,
       struct cs_etm_decoder *decoder)
{
 const char *decoder_name;
 ocsd_etmv3_cfg config_etmv3;
 ocsd_etmv4_cfg trace_config_etmv4;
 void *trace_config;

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

 return cs_etm_decoder__create_packet_printer(decoder,
           decoder_name,
           trace_config);
}
