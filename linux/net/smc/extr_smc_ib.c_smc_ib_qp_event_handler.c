
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct smc_link {struct smc_ib_device* smcibdev; } ;
struct smc_ib_device {int port_event_work; int port_event_mask; } ;
struct TYPE_4__ {TYPE_1__* qp; } ;
struct ib_event {int event; TYPE_2__ element; } ;
struct TYPE_3__ {int port; } ;




 int SMC_MAX_PORTS ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void smc_ib_qp_event_handler(struct ib_event *ibevent, void *priv)
{
 struct smc_link *lnk = (struct smc_link *)priv;
 struct smc_ib_device *smcibdev = lnk->smcibdev;
 u8 port_idx;

 switch (ibevent->event) {
 case 128:
 case 129:
  port_idx = ibevent->element.qp->port - 1;
  if (port_idx < SMC_MAX_PORTS) {
   set_bit(port_idx, &smcibdev->port_event_mask);
   schedule_work(&smcibdev->port_event_work);
  }
  break;
 default:
  break;
 }
}
