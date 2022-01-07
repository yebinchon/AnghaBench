
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rfcomm_session {int state; int dlcs; } ;
struct rfcomm_dlc {int state; int v24_sig; int (* state_change ) (struct rfcomm_dlc*,int ) ;} ;


 int BT_CLOSED ;

 void* BT_CONNECTED ;
 int BT_DBG (char*,struct rfcomm_session*,int,scalar_t__) ;

 int ECONNRESET ;
 int __rfcomm_dlc_close (struct rfcomm_dlc*,int ) ;
 int list_empty (int *) ;
 int rfcomm_dlc_clear_timer (struct rfcomm_dlc*) ;
 struct rfcomm_dlc* rfcomm_dlc_get (struct rfcomm_session*,scalar_t__) ;
 int rfcomm_dlc_lock (struct rfcomm_dlc*) ;
 int rfcomm_dlc_unlock (struct rfcomm_dlc*) ;
 int rfcomm_process_connect (struct rfcomm_session*) ;
 int rfcomm_send_disc (struct rfcomm_session*,int ) ;
 int rfcomm_send_dm (struct rfcomm_session*,scalar_t__) ;
 int rfcomm_send_msc (struct rfcomm_session*,int,scalar_t__,int ) ;
 int rfcomm_session_clear_timer (struct rfcomm_session*) ;
 struct rfcomm_session* rfcomm_session_close (struct rfcomm_session*,int ) ;
 int stub1 (struct rfcomm_dlc*,int ) ;

__attribute__((used)) static struct rfcomm_session *rfcomm_recv_ua(struct rfcomm_session *s, u8 dlci)
{
 BT_DBG("session %p state %ld dlci %d", s, s->state, dlci);

 if (dlci) {

  struct rfcomm_dlc *d = rfcomm_dlc_get(s, dlci);
  if (!d) {
   rfcomm_send_dm(s, dlci);
   return s;
  }

  switch (d->state) {
  case 129:
   rfcomm_dlc_clear_timer(d);

   rfcomm_dlc_lock(d);
   d->state = BT_CONNECTED;
   d->state_change(d, 0);
   rfcomm_dlc_unlock(d);

   rfcomm_send_msc(s, 1, dlci, d->v24_sig);
   break;

  case 128:
   d->state = BT_CLOSED;
   __rfcomm_dlc_close(d, 0);

   if (list_empty(&s->dlcs)) {
    s->state = 128;
    rfcomm_send_disc(s, 0);
    rfcomm_session_clear_timer(s);
   }

   break;
  }
 } else {

  switch (s->state) {
  case 129:
   s->state = BT_CONNECTED;
   rfcomm_process_connect(s);
   break;

  case 128:
   s = rfcomm_session_close(s, ECONNRESET);
   break;
  }
 }
 return s;
}
