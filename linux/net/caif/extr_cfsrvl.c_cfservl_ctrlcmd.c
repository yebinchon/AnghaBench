
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int id; } ;
struct cfsrvl {int open; int modem_flow_on; int phy_flow_on; TYPE_1__ dev_info; } ;
struct cflayer {TYPE_2__* up; } ;
typedef enum caif_ctrlcmd { ____Placeholder_caif_ctrlcmd } caif_ctrlcmd ;
struct TYPE_12__ {int (* ctrlcmd ) (TYPE_2__*,int,int) ;} ;
 struct cfsrvl* container_obj (struct cflayer*) ;
 int pr_warn (char*,int) ;
 int stub1 (TYPE_2__*,int,int) ;
 int stub2 (TYPE_2__*,int,int) ;
 int stub3 (TYPE_2__*,int,int) ;
 int stub4 (TYPE_2__*,int,int) ;
 int stub5 (TYPE_2__*,int const,int) ;
 int stub6 (TYPE_2__*,int const,int) ;
 int stub7 (TYPE_2__*,int,int) ;
 int stub8 (TYPE_2__*,int,int) ;
 int stub9 (TYPE_2__*,int,int) ;

__attribute__((used)) static void cfservl_ctrlcmd(struct cflayer *layr, enum caif_ctrlcmd ctrl,
       int phyid)
{
 struct cfsrvl *service = container_obj(layr);

 if (layr->up == ((void*)0) || layr->up->ctrlcmd == ((void*)0))
  return;

 switch (ctrl) {
 case 132:
  service->open = 1;
  layr->up->ctrlcmd(layr->up, ctrl, phyid);
  break;
 case 136:
 case 133:
  service->open = 0;
  layr->up->ctrlcmd(layr->up, ctrl, phyid);
  break;
 case 129:
  if (phyid != service->dev_info.id)
   break;
  if (service->modem_flow_on)
   layr->up->ctrlcmd(layr->up,
       135, phyid);
  service->phy_flow_on = 0;
  break;
 case 128:
  if (phyid != service->dev_info.id)
   return;
  if (service->modem_flow_on) {
   layr->up->ctrlcmd(layr->up,
        134,
        phyid);
  }
  service->phy_flow_on = 1;
  break;
 case 135:
  if (service->phy_flow_on) {
   layr->up->ctrlcmd(layr->up,
       135, phyid);
  }
  service->modem_flow_on = 0;
  break;
 case 134:
  if (service->phy_flow_on) {
   layr->up->ctrlcmd(layr->up,
       134, phyid);
  }
  service->modem_flow_on = 1;
  break;
 case 130:

  layr->up->ctrlcmd(layr->up,
    131, phyid);
  break;
 case 131:
  layr->up->ctrlcmd(layr->up, ctrl, phyid);
  break;
 default:
  pr_warn("Unexpected ctrl in cfsrvl (%d)\n", ctrl);

  layr->up->ctrlcmd(layr->up, ctrl, phyid);
  service->phy_flow_on = 1;
  break;
 }
}
