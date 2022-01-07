
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_session {int priv; } ;


 int j1939_session_deactivate_locked (struct j1939_session*) ;
 int j1939_session_list_lock (int ) ;
 int j1939_session_list_unlock (int ) ;

__attribute__((used)) static bool j1939_session_deactivate(struct j1939_session *session)
{
 bool active;

 j1939_session_list_lock(session->priv);
 active = j1939_session_deactivate_locked(session);
 j1939_session_list_unlock(session->priv);

 return active;
}
