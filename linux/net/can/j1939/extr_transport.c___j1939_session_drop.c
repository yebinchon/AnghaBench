
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_session {int sk; int transmission; } ;


 int j1939_sock_pending_del (int ) ;

__attribute__((used)) static void __j1939_session_drop(struct j1939_session *session)
{
 if (!session->transmission)
  return;

 j1939_sock_pending_del(session->sk);
}
