
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int state; int n2count; int n2; int sk; int modulus; TYPE_1__* ax25_dev; int window; } ;
typedef TYPE_2__ ax25_cb ;
struct TYPE_9__ {int * values; } ;


 int AX25_COMMAND ;
 int AX25_DISC ;
 int AX25_DM ;
 int AX25_MODULUS ;
 int AX25_POLLON ;
 int AX25_RESPONSE ;
 int AX25_SABM ;
 int AX25_SABME ;




 size_t AX25_VALUES_WINDOW ;
 int ETIMEDOUT ;
 int SOCK_DESTROY ;
 int ax25_calculate_t1 (TYPE_2__*) ;
 int ax25_disconnect (TYPE_2__*,int ) ;
 int ax25_send_control (TYPE_2__*,int ,int ,int ) ;
 int ax25_start_t1timer (TYPE_2__*) ;
 int ax25_std_transmit_enquiry (TYPE_2__*) ;
 int sock_flag (int ,int ) ;

void ax25_std_t1timer_expiry(ax25_cb *ax25)
{
 switch (ax25->state) {
 case 131:
  if (ax25->n2count == ax25->n2) {
   if (ax25->modulus == AX25_MODULUS) {
    ax25_disconnect(ax25, ETIMEDOUT);
    return;
   } else {
    ax25->modulus = AX25_MODULUS;
    ax25->window = ax25->ax25_dev->values[AX25_VALUES_WINDOW];
    ax25->n2count = 0;
    ax25_send_control(ax25, AX25_SABM, AX25_POLLON, AX25_COMMAND);
   }
  } else {
   ax25->n2count++;
   if (ax25->modulus == AX25_MODULUS)
    ax25_send_control(ax25, AX25_SABM, AX25_POLLON, AX25_COMMAND);
   else
    ax25_send_control(ax25, AX25_SABME, AX25_POLLON, AX25_COMMAND);
  }
  break;

 case 130:
  if (ax25->n2count == ax25->n2) {
   ax25_send_control(ax25, AX25_DISC, AX25_POLLON, AX25_COMMAND);
   if (!sock_flag(ax25->sk, SOCK_DESTROY))
    ax25_disconnect(ax25, ETIMEDOUT);
   return;
  } else {
   ax25->n2count++;
   ax25_send_control(ax25, AX25_DISC, AX25_POLLON, AX25_COMMAND);
  }
  break;

 case 129:
  ax25->n2count = 1;
  ax25_std_transmit_enquiry(ax25);
  ax25->state = 128;
  break;

 case 128:
  if (ax25->n2count == ax25->n2) {
   ax25_send_control(ax25, AX25_DM, AX25_POLLON, AX25_RESPONSE);
   ax25_disconnect(ax25, ETIMEDOUT);
   return;
  } else {
   ax25->n2count++;
   ax25_std_transmit_enquiry(ax25);
  }
  break;
 }

 ax25_calculate_t1(ax25);
 ax25_start_t1timer(ax25);
}
