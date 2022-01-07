
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct lapb_frame {int type; int pf; } ;
struct lapb_cb {int mode; int condition; int state; int dev; int va; int vr; int vs; int n2count; } ;




 int LAPB_EXTENDED ;
 int LAPB_OK ;
 int LAPB_REFUSED ;
 int LAPB_RESPONSE ;


 int LAPB_STATE_0 ;
 int LAPB_STATE_3 ;

 int kfree_skb (struct sk_buff*) ;
 int lapb_clear_queues (struct lapb_cb*) ;
 int lapb_connect_confirmation (struct lapb_cb*,int ) ;
 int lapb_dbg (int,char*,int ,...) ;
 int lapb_disconnect_indication (struct lapb_cb*,int ) ;
 int lapb_send_control (struct lapb_cb*,int,int ,int ) ;
 int lapb_start_t1timer (struct lapb_cb*) ;
 int lapb_stop_t1timer (struct lapb_cb*) ;
 int lapb_stop_t2timer (struct lapb_cb*) ;

__attribute__((used)) static void lapb_state1_machine(struct lapb_cb *lapb, struct sk_buff *skb,
    struct lapb_frame *frame)
{
 switch (frame->type) {
 case 130:
  lapb_dbg(1, "(%p) S1 RX SABM(%d)\n", lapb->dev, frame->pf);
  if (lapb->mode & LAPB_EXTENDED) {
   lapb_dbg(1, "(%p) S1 TX DM(%d)\n",
     lapb->dev, frame->pf);
   lapb_send_control(lapb, 131, frame->pf,
       LAPB_RESPONSE);
  } else {
   lapb_dbg(1, "(%p) S1 TX UA(%d)\n",
     lapb->dev, frame->pf);
   lapb_send_control(lapb, 128, frame->pf,
       LAPB_RESPONSE);
  }
  break;

 case 129:
  lapb_dbg(1, "(%p) S1 RX SABME(%d)\n", lapb->dev, frame->pf);
  if (lapb->mode & LAPB_EXTENDED) {
   lapb_dbg(1, "(%p) S1 TX UA(%d)\n",
     lapb->dev, frame->pf);
   lapb_send_control(lapb, 128, frame->pf,
       LAPB_RESPONSE);
  } else {
   lapb_dbg(1, "(%p) S1 TX DM(%d)\n",
     lapb->dev, frame->pf);
   lapb_send_control(lapb, 131, frame->pf,
       LAPB_RESPONSE);
  }
  break;

 case 132:
  lapb_dbg(1, "(%p) S1 RX DISC(%d)\n", lapb->dev, frame->pf);
  lapb_dbg(1, "(%p) S1 TX DM(%d)\n", lapb->dev, frame->pf);
  lapb_send_control(lapb, 131, frame->pf, LAPB_RESPONSE);
  break;

 case 128:
  lapb_dbg(1, "(%p) S1 RX UA(%d)\n", lapb->dev, frame->pf);
  if (frame->pf) {
   lapb_dbg(0, "(%p) S1 -> S3\n", lapb->dev);
   lapb_stop_t1timer(lapb);
   lapb_stop_t2timer(lapb);
   lapb->state = LAPB_STATE_3;
   lapb->condition = 0x00;
   lapb->n2count = 0;
   lapb->vs = 0;
   lapb->vr = 0;
   lapb->va = 0;
   lapb_connect_confirmation(lapb, LAPB_OK);
  }
  break;

 case 131:
  lapb_dbg(1, "(%p) S1 RX DM(%d)\n", lapb->dev, frame->pf);
  if (frame->pf) {
   lapb_dbg(0, "(%p) S1 -> S0\n", lapb->dev);
   lapb_clear_queues(lapb);
   lapb->state = LAPB_STATE_0;
   lapb_start_t1timer(lapb);
   lapb_stop_t2timer(lapb);
   lapb_disconnect_indication(lapb, LAPB_REFUSED);
  }
  break;
 }

 kfree_skb(skb);
}
