
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct auxtrace_record {int dummy; } ;


 int BIT (int ) ;
 int ETM4_CFG_BIT_CTXTID ;
 int ETM4_CFG_BIT_CYCACC ;
 int ETM4_CFG_BIT_RETSTK ;
 int ETM4_CFG_BIT_TS ;
 int ETM_OPT_CTXTID ;
 int ETM_OPT_CYCACC ;
 int ETM_OPT_RETSTK ;
 int ETM_OPT_TS ;
 int cs_etm_get_config (struct auxtrace_record*) ;

__attribute__((used)) static u64 cs_etmv4_get_config(struct auxtrace_record *itr)
{
 u64 config = 0;
 u64 config_opts = 0;







 config_opts = cs_etm_get_config(itr);
 if (config_opts & BIT(ETM_OPT_CYCACC))
  config |= BIT(ETM4_CFG_BIT_CYCACC);
 if (config_opts & BIT(ETM_OPT_CTXTID))
  config |= BIT(ETM4_CFG_BIT_CTXTID);
 if (config_opts & BIT(ETM_OPT_TS))
  config |= BIT(ETM4_CFG_BIT_TS);
 if (config_opts & BIT(ETM_OPT_RETSTK))
  config |= BIT(ETM4_CFG_BIT_RETSTK);

 return config;
}
