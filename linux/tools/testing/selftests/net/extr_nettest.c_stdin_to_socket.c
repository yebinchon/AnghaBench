
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int buf ;


 scalar_t__ EACCES ;
 int SOCK_STREAM ;
 scalar_t__ errno ;
 int * fgets (char*,int,int ) ;
 int log_err_errno (char*) ;
 int log_msg (char*,...) ;
 int sendto (int,char*,int,int ,void*,int ) ;
 int set_broadcast (int) ;
 int stdin ;
 int strlen (char*) ;
 scalar_t__ try_broadcast ;
 scalar_t__ write (int,char*,int) ;

__attribute__((used)) static int stdin_to_socket(int sd, int type, void *addr, socklen_t alen)
{
 char buf[1024];
 int len;

 if (fgets(buf, sizeof(buf), stdin) == ((void*)0))
  return 0;

 len = strlen(buf);
 if (type == SOCK_STREAM) {
  if (write(sd, buf, len) < 0) {
   log_err_errno("failed to send buf");
   return -1;
  }
 } else {
  int err;

again:
  err = sendto(sd, buf, len, 0, addr, alen);
  if (err < 0) {
   if (errno == EACCES && try_broadcast) {
    try_broadcast = 0;
    if (!set_broadcast(sd))
     goto again;
    errno = EACCES;
   }
   log_err_errno("failed to send msg to peer");
   return -1;
  }
 }
 log_msg("Sent message:\n");
 log_msg("    %.24s%s\n", buf, len > 24 ? " ..." : "");

 return 1;
}
