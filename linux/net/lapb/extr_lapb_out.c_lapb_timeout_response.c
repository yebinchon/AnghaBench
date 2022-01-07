
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {int condition; int vr; int state; int dev; } ;


 int LAPB_ACK_PENDING_CONDITION ;
 int LAPB_POLLOFF ;
 int LAPB_RESPONSE ;
 int LAPB_RR ;
 int lapb_dbg (int,char*,int ,int ,int ) ;
 int lapb_send_control (struct lapb_cb*,int ,int ,int ) ;

void lapb_timeout_response(struct lapb_cb *lapb)
{
 lapb_dbg(1, "(%p) S%d TX RR(0) R%d\n",
   lapb->dev, lapb->state, lapb->vr);
 lapb_send_control(lapb, LAPB_RR, LAPB_POLLOFF, LAPB_RESPONSE);

 lapb->condition &= ~LAPB_ACK_PENDING_CONDITION;
}
