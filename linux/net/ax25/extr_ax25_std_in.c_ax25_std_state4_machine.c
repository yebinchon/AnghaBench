
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_19__ {int modulus; int condition; int vr; void* state; int va; int vs; int n2count; TYPE_1__* ax25_dev; int window; } ;
typedef TYPE_2__ ax25_cb ;
struct TYPE_18__ {int * values; } ;


 int AX25_COMMAND ;
 int AX25_COND_ACK_PENDING ;
 int AX25_COND_OWN_RX_BUSY ;
 int AX25_COND_PEER_RX_BUSY ;
 int AX25_COND_REJECT ;


 int AX25_EMODULUS ;



 int AX25_MODULUS ;

 int AX25_RESPONSE ;




 void* AX25_STATE_1 ;
 void* AX25_STATE_3 ;
 int const AX25_UA ;
 size_t AX25_VALUES_EWINDOW ;
 size_t AX25_VALUES_WINDOW ;
 int ECONNRESET ;
 int ax25_disconnect (TYPE_2__*,int ) ;
 int ax25_frames_acked (TYPE_2__*,int) ;
 int ax25_requeue_frames (TYPE_2__*) ;
 int ax25_rx_iframe (TYPE_2__*,struct sk_buff*) ;
 int ax25_send_control (TYPE_2__*,int const,int,int) ;
 int ax25_start_idletimer (TYPE_2__*) ;
 int ax25_start_t2timer (TYPE_2__*) ;
 int ax25_start_t3timer (TYPE_2__*) ;
 int ax25_std_enquiry_response (TYPE_2__*) ;
 int ax25_std_establish_data_link (TYPE_2__*) ;
 int ax25_std_nr_error_recovery (TYPE_2__*) ;
 int ax25_stop_t1timer (TYPE_2__*) ;
 int ax25_stop_t2timer (TYPE_2__*) ;
 int ax25_validate_nr (TYPE_2__*,int) ;

__attribute__((used)) static int ax25_std_state4_machine(ax25_cb *ax25, struct sk_buff *skb, int frametype, int ns, int nr, int pf, int type)
{
 int queued = 0;

 switch (frametype) {
 case 129:
 case 128:
  if (frametype == 129) {
   ax25->modulus = AX25_MODULUS;
   ax25->window = ax25->ax25_dev->values[AX25_VALUES_WINDOW];
  } else {
   ax25->modulus = AX25_EMODULUS;
   ax25->window = ax25->ax25_dev->values[AX25_VALUES_EWINDOW];
  }
  ax25_send_control(ax25, AX25_UA, pf, AX25_RESPONSE);
  ax25_stop_t1timer(ax25);
  ax25_stop_t2timer(ax25);
  ax25_start_t3timer(ax25);
  ax25_start_idletimer(ax25);
  ax25->condition = 0x00;
  ax25->vs = 0;
  ax25->va = 0;
  ax25->vr = 0;
  ax25->state = AX25_STATE_3;
  ax25->n2count = 0;
  ax25_requeue_frames(ax25);
  break;

 case 137:
  ax25_send_control(ax25, AX25_UA, pf, AX25_RESPONSE);
  ax25_disconnect(ax25, 0);
  break;

 case 136:
  ax25_disconnect(ax25, ECONNRESET);
  break;

 case 130:
 case 131:
  if (frametype == 130)
   ax25->condition &= ~AX25_COND_PEER_RX_BUSY;
  else
   ax25->condition |= AX25_COND_PEER_RX_BUSY;
  if (type == AX25_RESPONSE && pf) {
   ax25_stop_t1timer(ax25);
   ax25->n2count = 0;
   if (ax25_validate_nr(ax25, nr)) {
    ax25_frames_acked(ax25, nr);
    if (ax25->vs == ax25->va) {
     ax25_start_t3timer(ax25);
     ax25->state = AX25_STATE_3;
    } else {
     ax25_requeue_frames(ax25);
    }
   } else {
    ax25_std_nr_error_recovery(ax25);
    ax25->state = AX25_STATE_1;
   }
   break;
  }
  if (type == AX25_COMMAND && pf)
   ax25_std_enquiry_response(ax25);
  if (ax25_validate_nr(ax25, nr)) {
   ax25_frames_acked(ax25, nr);
  } else {
   ax25_std_nr_error_recovery(ax25);
   ax25->state = AX25_STATE_1;
  }
  break;

 case 132:
  ax25->condition &= ~AX25_COND_PEER_RX_BUSY;
  if (pf && type == AX25_RESPONSE) {
   ax25_stop_t1timer(ax25);
   ax25->n2count = 0;
   if (ax25_validate_nr(ax25, nr)) {
    ax25_frames_acked(ax25, nr);
    if (ax25->vs == ax25->va) {
     ax25_start_t3timer(ax25);
     ax25->state = AX25_STATE_3;
    } else {
     ax25_requeue_frames(ax25);
    }
   } else {
    ax25_std_nr_error_recovery(ax25);
    ax25->state = AX25_STATE_1;
   }
   break;
  }
  if (type == AX25_COMMAND && pf)
   ax25_std_enquiry_response(ax25);
  if (ax25_validate_nr(ax25, nr)) {
   ax25_frames_acked(ax25, nr);
   ax25_requeue_frames(ax25);
  } else {
   ax25_std_nr_error_recovery(ax25);
   ax25->state = AX25_STATE_1;
  }
  break;

 case 134:
  if (!ax25_validate_nr(ax25, nr)) {
   ax25_std_nr_error_recovery(ax25);
   ax25->state = AX25_STATE_1;
   break;
  }
  ax25_frames_acked(ax25, nr);
  if (ax25->condition & AX25_COND_OWN_RX_BUSY) {
   if (pf)
    ax25_std_enquiry_response(ax25);
   break;
  }
  if (ns == ax25->vr) {
   ax25->vr = (ax25->vr + 1) % ax25->modulus;
   queued = ax25_rx_iframe(ax25, skb);
   if (ax25->condition & AX25_COND_OWN_RX_BUSY)
    ax25->vr = ns;
   ax25->condition &= ~AX25_COND_REJECT;
   if (pf) {
    ax25_std_enquiry_response(ax25);
   } else {
    if (!(ax25->condition & AX25_COND_ACK_PENDING)) {
     ax25->condition |= AX25_COND_ACK_PENDING;
     ax25_start_t2timer(ax25);
    }
   }
  } else {
   if (ax25->condition & AX25_COND_REJECT) {
    if (pf) ax25_std_enquiry_response(ax25);
   } else {
    ax25->condition |= AX25_COND_REJECT;
    ax25_send_control(ax25, 132, pf, AX25_RESPONSE);
    ax25->condition &= ~AX25_COND_ACK_PENDING;
   }
  }
  break;

 case 135:
 case 133:
  ax25_std_establish_data_link(ax25);
  ax25->state = AX25_STATE_1;
  break;

 default:
  break;
 }

 return queued;
}
