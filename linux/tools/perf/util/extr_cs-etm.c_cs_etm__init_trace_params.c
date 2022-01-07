
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct cs_etm_trace_params {int dummy; } ;
struct cs_etm_auxtrace {int num_cpu; int** metadata; } ;


 size_t CS_ETM_ETMIDR ;
 size_t CS_ETM_MAGIC ;
 int EINVAL ;


 int cs_etm__set_trace_param_etmv3 (struct cs_etm_trace_params*,struct cs_etm_auxtrace*,int,int) ;
 int cs_etm__set_trace_param_etmv4 (struct cs_etm_trace_params*,struct cs_etm_auxtrace*,int) ;

__attribute__((used)) static int cs_etm__init_trace_params(struct cs_etm_trace_params *t_params,
         struct cs_etm_auxtrace *etm)
{
 int i;
 u32 etmidr;
 u64 architecture;

 for (i = 0; i < etm->num_cpu; i++) {
  architecture = etm->metadata[i][CS_ETM_MAGIC];

  switch (architecture) {
  case 129:
   etmidr = etm->metadata[i][CS_ETM_ETMIDR];
   cs_etm__set_trace_param_etmv3(t_params, etm, i, etmidr);
   break;
  case 128:
   cs_etm__set_trace_param_etmv4(t_params, etm, i);
   break;
  default:
   return -EINVAL;
  }
 }

 return 0;
}
