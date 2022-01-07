
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int gid; int uid; } ;
struct scm_cookie {TYPE_1__ creds; int pid; } ;
struct msghdr {int msg_controllen; } ;


 int current ;
 int current_uid_gid (int *,int *) ;
 int get_pid (int ) ;
 int scm_send (struct socket*,struct msghdr*,struct scm_cookie*,int) ;
 int task_tgid (int ) ;
 scalar_t__ unix_passcred_enabled (struct socket*,struct sock const*) ;

__attribute__((used)) static int maybe_init_creds(struct scm_cookie *scm,
       struct socket *socket,
       const struct sock *other)
{
 int err;
 struct msghdr msg = { .msg_controllen = 0 };

 err = scm_send(socket, &msg, scm, 0);
 if (err)
  return err;

 if (unix_passcred_enabled(socket, other)) {
  scm->pid = get_pid(task_tgid(current));
  current_uid_gid(&scm->creds.uid, &scm->creds.gid);
 }
 return err;
}
