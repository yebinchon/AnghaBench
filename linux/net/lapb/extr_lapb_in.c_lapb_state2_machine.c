
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct lapb_frame {int type; int pf; } ;
struct lapb_cb {int dev; void* state; } ;





 int LAPB_NOTCONNECTED ;
 int LAPB_OK ;

 int LAPB_RESPONSE ;




 void* LAPB_STATE_0 ;

 int kfree_skb (struct sk_buff*) ;
 int lapb_dbg (int,char*,int ,...) ;
 int lapb_disconnect_confirmation (struct lapb_cb*,int ) ;
 int lapb_send_control (struct lapb_cb*,int const,int ,int ) ;
 int lapb_start_t1timer (struct lapb_cb*) ;
 int lapb_stop_t2timer (struct lapb_cb*) ;

__attribute__((used)) static void lapb_state2_machine(struct lapb_cb *lapb, struct sk_buff *skb,
    struct lapb_frame *frame)
{
 switch (frame->type) {
 case 130:
 case 129:
  lapb_dbg(1, "(%p) S2 RX {SABM,SABME}(%d)\n",
    lapb->dev, frame->pf);
  lapb_dbg(1, "(%p) S2 TX DM(%d)\n", lapb->dev, frame->pf);
  lapb_send_control(lapb, 135, frame->pf, LAPB_RESPONSE);
  break;

 case 136:
  lapb_dbg(1, "(%p) S2 RX DISC(%d)\n", lapb->dev, frame->pf);
  lapb_dbg(1, "(%p) S2 TX UA(%d)\n", lapb->dev, frame->pf);
  lapb_send_control(lapb, 128, frame->pf, LAPB_RESPONSE);
  break;

 case 128:
  lapb_dbg(1, "(%p) S2 RX UA(%d)\n", lapb->dev, frame->pf);
  if (frame->pf) {
   lapb_dbg(0, "(%p) S2 -> S0\n", lapb->dev);
   lapb->state = LAPB_STATE_0;
   lapb_start_t1timer(lapb);
   lapb_stop_t2timer(lapb);
   lapb_disconnect_confirmation(lapb, LAPB_OK);
  }
  break;

 case 135:
  lapb_dbg(1, "(%p) S2 RX DM(%d)\n", lapb->dev, frame->pf);
  if (frame->pf) {
   lapb_dbg(0, "(%p) S2 -> S0\n", lapb->dev);
   lapb->state = LAPB_STATE_0;
   lapb_start_t1timer(lapb);
   lapb_stop_t2timer(lapb);
   lapb_disconnect_confirmation(lapb, LAPB_NOTCONNECTED);
  }
  break;

 case 134:
 case 133:
 case 132:
 case 131:
  lapb_dbg(1, "(%p) S2 RX {I,REJ,RNR,RR}(%d)\n",
         lapb->dev, frame->pf);
  lapb_dbg(1, "(%p) S2 RX DM(%d)\n", lapb->dev, frame->pf);
  if (frame->pf)
   lapb_send_control(lapb, 135, frame->pf,
       LAPB_RESPONSE);
  break;
 }

 kfree_skb(skb);
}
