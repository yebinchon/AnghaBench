
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {unsigned long tv_sec; unsigned long tv_usec; } ;
struct mei {scalar_t__ fd; } ;
typedef int ssize_t ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int errno ;
 int mei_deinit (struct mei*) ;
 int mei_err (struct mei*,char*,...) ;
 int mei_msg (struct mei*,char*,...) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int strerror (int ) ;
 int write (scalar_t__,unsigned char const*,int ) ;

__attribute__((used)) static ssize_t mei_send_msg(struct mei *me, const unsigned char *buffer,
   ssize_t len, unsigned long timeout)
{
 struct timeval tv;
 ssize_t written;
 ssize_t rc;
 fd_set set;

 tv.tv_sec = timeout / 1000;
 tv.tv_usec = (timeout % 1000) * 1000000;

 mei_msg(me, "call write length = %zd\n", len);

 written = write(me->fd, buffer, len);
 if (written < 0) {
  rc = -errno;
  mei_err(me, "write failed with status %zd %s\n",
   written, strerror(errno));
  goto out;
 }

 FD_ZERO(&set);
 FD_SET(me->fd, &set);
 rc = select(me->fd + 1 , &set, ((void*)0), ((void*)0), &tv);
 if (rc > 0 && FD_ISSET(me->fd, &set)) {
  mei_msg(me, "write success\n");
 } else if (rc == 0) {
  mei_err(me, "write failed on timeout with status\n");
  goto out;
 } else {
  mei_err(me, "write failed on select with status %zd\n", rc);
  goto out;
 }

 rc = written;
out:
 if (rc < 0)
  mei_deinit(me);

 return rc;
}
