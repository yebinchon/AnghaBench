
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct timeval {scalar_t__ tv_sec; } ;
typedef int socklen_t ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 scalar_t__ getsockopt (int,int ,int ,int*,int *) ;
 int log_err_errno (char*) ;
 int log_error (char*,...) ;
 scalar_t__ prog_timeout ;
 int select (int ,int *,int *,int *,struct timeval*) ;
 int strerror (int) ;

__attribute__((used)) static int wait_for_connect(int sd)
{
 struct timeval _tv = { .tv_sec = prog_timeout }, *tv = ((void*)0);
 fd_set wfd;
 int val = 0, sz = sizeof(val);
 int rc;

 FD_ZERO(&wfd);
 FD_SET(sd, &wfd);

 if (prog_timeout)
  tv = &_tv;

 rc = select(FD_SETSIZE, ((void*)0), &wfd, ((void*)0), tv);
 if (rc == 0) {
  log_error("connect timed out\n");
  return -2;
 } else if (rc < 0) {
  log_err_errno("select failed");
  return -3;
 }

 if (getsockopt(sd, SOL_SOCKET, SO_ERROR, &val, (socklen_t *)&sz) < 0) {
  log_err_errno("getsockopt(SO_ERROR) failed");
  return -4;
 }

 if (val != 0) {
  log_error("connect failed: %d: %s\n", val, strerror(val));
  return -1;
 }

 return 0;
}
