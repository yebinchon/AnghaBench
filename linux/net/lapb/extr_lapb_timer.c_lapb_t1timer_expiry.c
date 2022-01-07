
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct lapb_cb {int state; int mode; int n2count; int dev; int n2; } ;


 int LAPB_COMMAND ;
 int LAPB_DCE ;
 int LAPB_DISC ;
 int LAPB_DM ;
 int LAPB_EXTENDED ;
 int LAPB_POLLOFF ;
 int LAPB_POLLON ;
 int LAPB_RESPONSE ;
 int LAPB_SABM ;
 int LAPB_SABME ;





 int LAPB_TIMEDOUT ;
 struct lapb_cb* from_timer (int ,struct timer_list*,int ) ;
 struct lapb_cb* lapb ;
 int lapb_clear_queues (struct lapb_cb*) ;
 int lapb_dbg (int,char*,int ) ;
 int lapb_disconnect_confirmation (struct lapb_cb*,int ) ;
 int lapb_disconnect_indication (struct lapb_cb*,int ) ;
 int lapb_kick (struct lapb_cb*) ;
 int lapb_requeue_frames (struct lapb_cb*) ;
 int lapb_send_control (struct lapb_cb*,int ,int ,int ) ;
 int lapb_start_t1timer (struct lapb_cb*) ;
 int lapb_stop_t2timer (struct lapb_cb*) ;
 int lapb_transmit_frmr (struct lapb_cb*) ;
 int t1timer ;

__attribute__((used)) static void lapb_t1timer_expiry(struct timer_list *t)
{
 struct lapb_cb *lapb = from_timer(lapb, t, t1timer);

 switch (lapb->state) {




  case 132:
   if (lapb->mode & LAPB_DCE)
    lapb_send_control(lapb, LAPB_DM, LAPB_POLLOFF, LAPB_RESPONSE);
   break;




  case 131:
   if (lapb->n2count == lapb->n2) {
    lapb_clear_queues(lapb);
    lapb->state = 132;
    lapb_disconnect_indication(lapb, LAPB_TIMEDOUT);
    lapb_dbg(0, "(%p) S1 -> S0\n", lapb->dev);
    return;
   } else {
    lapb->n2count++;
    if (lapb->mode & LAPB_EXTENDED) {
     lapb_dbg(1, "(%p) S1 TX SABME(1)\n",
       lapb->dev);
     lapb_send_control(lapb, LAPB_SABME, LAPB_POLLON, LAPB_COMMAND);
    } else {
     lapb_dbg(1, "(%p) S1 TX SABM(1)\n",
       lapb->dev);
     lapb_send_control(lapb, LAPB_SABM, LAPB_POLLON, LAPB_COMMAND);
    }
   }
   break;




  case 130:
   if (lapb->n2count == lapb->n2) {
    lapb_clear_queues(lapb);
    lapb->state = 132;
    lapb_disconnect_confirmation(lapb, LAPB_TIMEDOUT);
    lapb_dbg(0, "(%p) S2 -> S0\n", lapb->dev);
    return;
   } else {
    lapb->n2count++;
    lapb_dbg(1, "(%p) S2 TX DISC(1)\n", lapb->dev);
    lapb_send_control(lapb, LAPB_DISC, LAPB_POLLON, LAPB_COMMAND);
   }
   break;




  case 129:
   if (lapb->n2count == lapb->n2) {
    lapb_clear_queues(lapb);
    lapb->state = 132;
    lapb_stop_t2timer(lapb);
    lapb_disconnect_indication(lapb, LAPB_TIMEDOUT);
    lapb_dbg(0, "(%p) S3 -> S0\n", lapb->dev);
    return;
   } else {
    lapb->n2count++;
    lapb_requeue_frames(lapb);
    lapb_kick(lapb);
   }
   break;




  case 128:
   if (lapb->n2count == lapb->n2) {
    lapb_clear_queues(lapb);
    lapb->state = 132;
    lapb_disconnect_indication(lapb, LAPB_TIMEDOUT);
    lapb_dbg(0, "(%p) S4 -> S0\n", lapb->dev);
    return;
   } else {
    lapb->n2count++;
    lapb_transmit_frmr(lapb);
   }
   break;
 }

 lapb_start_t1timer(lapb);
}
