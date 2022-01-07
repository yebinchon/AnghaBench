
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;


 scalar_t__ EACCES ;
 scalar_t__ errno ;
 int log_err_errno (char*) ;
 int msg ;
 int msglen ;
 int sendto (int,int ,int ,int ,void*,int ) ;
 int set_broadcast (int) ;
 scalar_t__ try_broadcast ;

__attribute__((used)) static int send_msg_no_cmsg(int sd, void *addr, socklen_t alen)
{
 int err;

again:
 err = sendto(sd, msg, msglen, 0, addr, alen);
 if (err < 0) {
  if (errno == EACCES && try_broadcast) {
   try_broadcast = 0;
   if (!set_broadcast(sd))
    goto again;
   errno = EACCES;
  }

  log_err_errno("sendto failed");
  return 1;
 }

 return 0;
}
