
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hsr_priv {int dummy; } ;
struct hsr_port {TYPE_1__* dev; } ;
struct TYPE_2__ {unsigned char operstate; } ;


 int HSR_PT_MASTER ;
 int hsr_check_announce (TYPE_1__*,unsigned char) ;
 int hsr_check_carrier (struct hsr_port*) ;
 struct hsr_port* hsr_port_get_hsr (struct hsr_priv*,int ) ;
 int hsr_set_operstate (struct hsr_port*,int) ;

void hsr_check_carrier_and_operstate(struct hsr_priv *hsr)
{
 struct hsr_port *master;
 unsigned char old_operstate;
 bool has_carrier;

 master = hsr_port_get_hsr(hsr, HSR_PT_MASTER);



 old_operstate = master->dev->operstate;
 has_carrier = hsr_check_carrier(master);
 hsr_set_operstate(master, has_carrier);
 hsr_check_announce(master->dev, old_operstate);
}
