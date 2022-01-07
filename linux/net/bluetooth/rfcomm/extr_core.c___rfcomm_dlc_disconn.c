
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_session {int dummy; } ;
struct rfcomm_dlc {int dlci; int tx_queue; int state; struct rfcomm_session* session; } ;


 int BT_DISCONN ;
 int RFCOMM_DISC_TIMEOUT ;
 int rfcomm_dlc_set_timer (struct rfcomm_dlc*,int) ;
 int rfcomm_queue_disc (struct rfcomm_dlc*) ;
 int rfcomm_send_disc (struct rfcomm_session*,int ) ;
 scalar_t__ skb_queue_empty (int *) ;

__attribute__((used)) static void __rfcomm_dlc_disconn(struct rfcomm_dlc *d)
{
 struct rfcomm_session *s = d->session;

 d->state = BT_DISCONN;
 if (skb_queue_empty(&d->tx_queue)) {
  rfcomm_send_disc(s, d->dlci);
  rfcomm_dlc_set_timer(d, RFCOMM_DISC_TIMEOUT);
 } else {
  rfcomm_queue_disc(d);
  rfcomm_dlc_set_timer(d, RFCOMM_DISC_TIMEOUT * 2);
 }
}
