
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_session {int dlcs; } ;
struct rfcomm_dlc {struct rfcomm_session* session; int list; int refcnt; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,int ,struct rfcomm_session*) ;
 int RFCOMM_IDLE_TIMEOUT ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int refcount_read (int *) ;
 int rfcomm_dlc_put (struct rfcomm_dlc*) ;
 int rfcomm_session_set_timer (struct rfcomm_session*,int ) ;

__attribute__((used)) static void rfcomm_dlc_unlink(struct rfcomm_dlc *d)
{
 struct rfcomm_session *s = d->session;

 BT_DBG("dlc %p refcnt %d session %p", d, refcount_read(&d->refcnt), s);

 list_del(&d->list);
 d->session = ((void*)0);
 rfcomm_dlc_put(d);

 if (list_empty(&s->dlcs))
  rfcomm_session_set_timer(s, RFCOMM_IDLE_TIMEOUT);
}
