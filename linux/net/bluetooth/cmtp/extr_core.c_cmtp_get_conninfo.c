
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmtp_session {int dummy; } ;
struct cmtp_conninfo {int bdaddr; } ;


 int ENOENT ;
 int __cmtp_copy_session (struct cmtp_session*,struct cmtp_conninfo*) ;
 struct cmtp_session* __cmtp_get_session (int *) ;
 int cmtp_session_sem ;
 int down_read (int *) ;
 int up_read (int *) ;

int cmtp_get_conninfo(struct cmtp_conninfo *ci)
{
 struct cmtp_session *session;
 int err = 0;

 down_read(&cmtp_session_sem);

 session = __cmtp_get_session(&ci->bdaddr);
 if (session)
  __cmtp_copy_session(session, ci);
 else
  err = -ENOENT;

 up_read(&cmtp_session_sem);
 return err;
}
