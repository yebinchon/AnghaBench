
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct sock_args {scalar_t__ type; int version; } ;
typedef int socklen_t ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int MAX (int,int) ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ errno ;
 int fileno (int ) ;
 scalar_t__ interactive ;
 int iter ;
 int log_err_errno (char*) ;
 int log_error (char*) ;
 int log_msg (char*) ;
 scalar_t__ msg ;
 int msglen ;
 int prog_timeout ;
 int quiet ;
 int select (int,int *,int *,int *,struct timeval*) ;
 scalar_t__ send_msg (int,void*,int ,struct sock_args*) ;
 int set_recv_attr (int,int ) ;
 int socket_read (int,struct sock_args*) ;
 int stdin ;
 scalar_t__ stdin_to_socket (int,scalar_t__,void*,int ) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static int msg_loop(int client, int sd, void *addr, socklen_t alen,
      struct sock_args *args)
{
 struct timeval timeout = { .tv_sec = prog_timeout }, *ptval = ((void*)0);
 fd_set rfds;
 int nfds;
 int rc;

 if (args->type != SOCK_STREAM)
  set_recv_attr(sd, args->version);

 if (msg) {
  msglen = strlen(msg);


  if (client) {
   if (send_msg(sd, addr, alen, args))
    return 1;
  }
  if (!interactive) {
   ptval = &timeout;
   if (!prog_timeout)
    timeout.tv_sec = 5;
  }
 }

 nfds = interactive ? MAX(fileno(stdin), sd) + 1 : sd + 1;
 while (1) {
  FD_ZERO(&rfds);
  FD_SET(sd, &rfds);
  if (interactive)
   FD_SET(fileno(stdin), &rfds);

  rc = select(nfds, &rfds, ((void*)0), ((void*)0), ptval);
  if (rc < 0) {
   if (errno == EINTR)
    continue;

   rc = 1;
   log_err_errno("select failed");
   break;
  } else if (rc == 0) {
   log_error("Timed out waiting for response\n");
   rc = 2;
   break;
  }

  if (FD_ISSET(sd, &rfds)) {
   rc = socket_read(sd, args);
   if (rc < 0) {
    rc = 1;
    break;
   }
   if (rc == 0)
    break;
  }

  rc = 0;

  if (FD_ISSET(fileno(stdin), &rfds)) {
   if (stdin_to_socket(sd, args->type, addr, alen) <= 0)
    break;
  }

  if (interactive)
   continue;

  if (iter != -1) {
   --iter;
   if (iter == 0)
    break;
  }

  log_msg("Going into quiet mode\n");
  quiet = 1;

  if (client) {
   if (send_msg(sd, addr, alen, args)) {
    rc = 1;
    break;
   }
  }
 }

 return rc;
}
