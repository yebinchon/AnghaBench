
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_rxq_info {scalar_t__ reg_state; } ;


 scalar_t__ REG_STATE_REGISTERED ;

bool xdp_rxq_info_is_reg(struct xdp_rxq_info *xdp_rxq)
{
 return (xdp_rxq->reg_state == REG_STATE_REGISTERED);
}
