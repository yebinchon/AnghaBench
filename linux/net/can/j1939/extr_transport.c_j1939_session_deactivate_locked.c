
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct j1939_session {scalar_t__ state; int active_session_list_entry; TYPE_1__* priv; } ;
struct TYPE_2__ {int active_session_list_lock; } ;


 scalar_t__ J1939_SESSION_ACTIVE ;
 scalar_t__ J1939_SESSION_ACTIVE_MAX ;
 scalar_t__ J1939_SESSION_DONE ;
 int j1939_session_put (struct j1939_session*) ;
 int list_del_init (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static bool j1939_session_deactivate_locked(struct j1939_session *session)
{
 bool active = 0;

 lockdep_assert_held(&session->priv->active_session_list_lock);

 if (session->state >= J1939_SESSION_ACTIVE &&
     session->state < J1939_SESSION_ACTIVE_MAX) {
  active = 1;

  list_del_init(&session->active_session_list_entry);
  session->state = J1939_SESSION_DONE;
  j1939_session_put(session);
 }

 return active;
}
