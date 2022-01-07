
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reg_trc_id; int reg_ccer; int reg_ctrl; int reg_idr; } ;
struct cs_etm_trace_params {TYPE_1__ etmv3; } ;
struct TYPE_5__ {int core_prof; int arch_ver; int reg_trc_id; int reg_ccer; int reg_ctrl; int reg_idr; } ;
typedef TYPE_2__ ocsd_etmv3_cfg ;


 int ARCH_V7 ;
 int profile_CortexA ;

__attribute__((used)) static int cs_etm_decoder__gen_etmv3_config(struct cs_etm_trace_params *params,
         ocsd_etmv3_cfg *config)
{
 config->reg_idr = params->etmv3.reg_idr;
 config->reg_ctrl = params->etmv3.reg_ctrl;
 config->reg_ccer = params->etmv3.reg_ccer;
 config->reg_trc_id = params->etmv3.reg_trc_id;
 config->arch_ver = ARCH_V7;
 config->core_prof = profile_CortexA;

 return 0;
}
