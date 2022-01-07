
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {int condition; int mode; int state; int dev; scalar_t__ n2count; } ;


 int LAPB_COMMAND ;
 int LAPB_EXTENDED ;
 int LAPB_POLLON ;
 int LAPB_SABM ;
 int LAPB_SABME ;
 int lapb_dbg (int,char*,int ,int ) ;
 int lapb_send_control (struct lapb_cb*,int ,int ,int ) ;
 int lapb_start_t1timer (struct lapb_cb*) ;
 int lapb_stop_t2timer (struct lapb_cb*) ;

void lapb_establish_data_link(struct lapb_cb *lapb)
{
 lapb->condition = 0x00;
 lapb->n2count = 0;

 if (lapb->mode & LAPB_EXTENDED) {
  lapb_dbg(1, "(%p) S%d TX SABME(1)\n", lapb->dev, lapb->state);
  lapb_send_control(lapb, LAPB_SABME, LAPB_POLLON, LAPB_COMMAND);
 } else {
  lapb_dbg(1, "(%p) S%d TX SABM(1)\n", lapb->dev, lapb->state);
  lapb_send_control(lapb, LAPB_SABM, LAPB_POLLON, LAPB_COMMAND);
 }

 lapb_start_t1timer(lapb);
 lapb_stop_t2timer(lapb);
}
