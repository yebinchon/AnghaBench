
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dim_cq_moder {int dummy; } ;


 scalar_t__ DIM_CQ_PERIOD_MODE_START_FROM_CQE ;
 scalar_t__ NET_DIM_DEF_PROFILE_CQE ;
 scalar_t__ NET_DIM_DEF_PROFILE_EQE ;
 struct dim_cq_moder net_dim_get_tx_moderation (scalar_t__,scalar_t__) ;

struct dim_cq_moder
net_dim_get_def_tx_moderation(u8 cq_period_mode)
{
 u8 profile_ix = cq_period_mode == DIM_CQ_PERIOD_MODE_START_FROM_CQE ?
   NET_DIM_DEF_PROFILE_CQE : NET_DIM_DEF_PROFILE_EQE;

 return net_dim_get_tx_moderation(cq_period_mode, profile_ix);
}
