
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_session {int kref; } ;


 int __j1939_session_release ;
 int kref_put (int *,int ) ;

void j1939_session_put(struct j1939_session *session)
{
 kref_put(&session->kref, __j1939_session_release);
}
