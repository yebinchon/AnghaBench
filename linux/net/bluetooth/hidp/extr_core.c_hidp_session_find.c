
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int dummy; } ;
typedef int bdaddr_t ;


 struct hidp_session* __hidp_session_find (int const*) ;
 int down_read (int *) ;
 int hidp_session_get (struct hidp_session*) ;
 int hidp_session_sem ;
 int up_read (int *) ;

__attribute__((used)) static struct hidp_session *hidp_session_find(const bdaddr_t *bdaddr)
{
 struct hidp_session *session;

 down_read(&hidp_session_sem);

 session = __hidp_session_find(bdaddr);
 if (session)
  hidp_session_get(session);

 up_read(&hidp_session_sem);

 return session;
}
