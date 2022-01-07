
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int dummy; } ;
struct hidp_conninfo {int bdaddr; } ;


 int ENOENT ;
 int hidp_copy_session (struct hidp_session*,struct hidp_conninfo*) ;
 struct hidp_session* hidp_session_find (int *) ;
 int hidp_session_put (struct hidp_session*) ;

int hidp_get_conninfo(struct hidp_conninfo *ci)
{
 struct hidp_session *session;

 session = hidp_session_find(&ci->bdaddr);
 if (session) {
  hidp_copy_session(session, ci);
  hidp_session_put(session);
 }

 return session ? 0 : -ENOENT;
}
