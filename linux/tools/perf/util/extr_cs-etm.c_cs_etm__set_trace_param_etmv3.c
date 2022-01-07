
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
struct TYPE_2__ {void* reg_trc_id; void* reg_ctrl; } ;
struct cs_etm_trace_params {TYPE_1__ etmv3; int protocol; } ;
struct cs_etm_auxtrace {void*** metadata; } ;


 size_t CS_ETM_ETMCR ;
 size_t CS_ETM_ETMTRACEIDR ;
 int cs_etm__get_v7_protocol_version (int ) ;

__attribute__((used)) static void cs_etm__set_trace_param_etmv3(struct cs_etm_trace_params *t_params,
       struct cs_etm_auxtrace *etm, int idx,
       u32 etmidr)
{
 u64 **metadata = etm->metadata;

 t_params[idx].protocol = cs_etm__get_v7_protocol_version(etmidr);
 t_params[idx].etmv3.reg_ctrl = metadata[idx][CS_ETM_ETMCR];
 t_params[idx].etmv3.reg_trc_id = metadata[idx][CS_ETM_ETMTRACEIDR];
}
