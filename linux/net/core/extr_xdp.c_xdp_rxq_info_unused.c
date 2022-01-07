
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_rxq_info {int reg_state; } ;


 int REG_STATE_UNUSED ;

void xdp_rxq_info_unused(struct xdp_rxq_info *xdp_rxq)
{
 xdp_rxq->reg_state = REG_STATE_UNUSED;
}
