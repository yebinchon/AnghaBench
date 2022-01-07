
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_15__ {void* modulus; TYPE_1__* ax25_dev; int window; TYPE_3__* sk; int n2count; int state; int vr; int va; int vs; } ;
typedef TYPE_2__ ax25_cb ;
struct TYPE_16__ {int (* sk_state_change ) (TYPE_3__*) ;int sk_state; } ;
struct TYPE_14__ {int * values; } ;




 void* AX25_EMODULUS ;
 void* AX25_MODULUS ;
 int AX25_RESPONSE ;


 int AX25_STATE_3 ;

 size_t AX25_VALUES_EWINDOW ;
 size_t AX25_VALUES_WINDOW ;
 int ECONNREFUSED ;
 int SOCK_DEAD ;
 int TCP_ESTABLISHED ;
 int ax25_calculate_rtt (TYPE_2__*) ;
 int ax25_disconnect (TYPE_2__*,int ) ;
 int ax25_send_control (TYPE_2__*,int,int,int ) ;
 int ax25_start_idletimer (TYPE_2__*) ;
 int ax25_start_t3timer (TYPE_2__*) ;
 int ax25_stop_t1timer (TYPE_2__*) ;
 int bh_lock_sock (TYPE_3__*) ;
 int bh_unlock_sock (TYPE_3__*) ;
 int sock_flag (TYPE_3__*,int ) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int ax25_std_state1_machine(ax25_cb *ax25, struct sk_buff *skb, int frametype, int pf, int type)
{
 switch (frametype) {
 case 130:
  ax25->modulus = AX25_MODULUS;
  ax25->window = ax25->ax25_dev->values[AX25_VALUES_WINDOW];
  ax25_send_control(ax25, 128, pf, AX25_RESPONSE);
  break;

 case 129:
  ax25->modulus = AX25_EMODULUS;
  ax25->window = ax25->ax25_dev->values[AX25_VALUES_EWINDOW];
  ax25_send_control(ax25, 128, pf, AX25_RESPONSE);
  break;

 case 132:
  ax25_send_control(ax25, 131, pf, AX25_RESPONSE);
  break;

 case 128:
  if (pf) {
   ax25_calculate_rtt(ax25);
   ax25_stop_t1timer(ax25);
   ax25_start_t3timer(ax25);
   ax25_start_idletimer(ax25);
   ax25->vs = 0;
   ax25->va = 0;
   ax25->vr = 0;
   ax25->state = AX25_STATE_3;
   ax25->n2count = 0;
   if (ax25->sk != ((void*)0)) {
    bh_lock_sock(ax25->sk);
    ax25->sk->sk_state = TCP_ESTABLISHED;

    if (!sock_flag(ax25->sk, SOCK_DEAD))
     ax25->sk->sk_state_change(ax25->sk);
    bh_unlock_sock(ax25->sk);
   }
  }
  break;

 case 131:
  if (pf) {
   if (ax25->modulus == AX25_MODULUS) {
    ax25_disconnect(ax25, ECONNREFUSED);
   } else {
    ax25->modulus = AX25_MODULUS;
    ax25->window = ax25->ax25_dev->values[AX25_VALUES_WINDOW];
   }
  }
  break;

 default:
  break;
 }

 return 0;
}
