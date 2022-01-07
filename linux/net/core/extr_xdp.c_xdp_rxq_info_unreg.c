
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ id; } ;
struct xdp_rxq_info {scalar_t__ reg_state; TYPE_1__ mem; int * dev; } ;


 scalar_t__ REG_STATE_REGISTERED ;
 scalar_t__ REG_STATE_UNREGISTERED ;
 scalar_t__ REG_STATE_UNUSED ;
 int WARN (int,char*) ;
 int xdp_rxq_info_unreg_mem_model (struct xdp_rxq_info*) ;

void xdp_rxq_info_unreg(struct xdp_rxq_info *xdp_rxq)
{

 if (xdp_rxq->reg_state == REG_STATE_UNUSED)
  return;

 WARN(!(xdp_rxq->reg_state == REG_STATE_REGISTERED), "Driver BUG");

 xdp_rxq_info_unreg_mem_model(xdp_rxq);

 xdp_rxq->reg_state = REG_STATE_UNREGISTERED;
 xdp_rxq->dev = ((void*)0);


 xdp_rxq->mem.id = 0;
 xdp_rxq->mem.type = 0;
}
