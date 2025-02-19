
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_2__ {void* reg_traceidr; void* reg_configr; void* reg_idr8; void* reg_idr2; void* reg_idr1; void* reg_idr0; } ;
struct cs_etm_trace_params {TYPE_1__ etmv4; int protocol; } ;
struct cs_etm_auxtrace {void*** metadata; } ;


 size_t CS_ETMV4_TRCCONFIGR ;
 size_t CS_ETMV4_TRCIDR0 ;
 size_t CS_ETMV4_TRCIDR1 ;
 size_t CS_ETMV4_TRCIDR2 ;
 size_t CS_ETMV4_TRCIDR8 ;
 size_t CS_ETMV4_TRCTRACEIDR ;
 int CS_ETM_PROTO_ETMV4i ;

__attribute__((used)) static void cs_etm__set_trace_param_etmv4(struct cs_etm_trace_params *t_params,
       struct cs_etm_auxtrace *etm, int idx)
{
 u64 **metadata = etm->metadata;

 t_params[idx].protocol = CS_ETM_PROTO_ETMV4i;
 t_params[idx].etmv4.reg_idr0 = metadata[idx][CS_ETMV4_TRCIDR0];
 t_params[idx].etmv4.reg_idr1 = metadata[idx][CS_ETMV4_TRCIDR1];
 t_params[idx].etmv4.reg_idr2 = metadata[idx][CS_ETMV4_TRCIDR2];
 t_params[idx].etmv4.reg_idr8 = metadata[idx][CS_ETMV4_TRCIDR8];
 t_params[idx].etmv4.reg_configr = metadata[idx][CS_ETMV4_TRCCONFIGR];
 t_params[idx].etmv4.reg_traceidr = metadata[idx][CS_ETMV4_TRCTRACEIDR];
}
