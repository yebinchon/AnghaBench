
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei {int fd; } ;
typedef scalar_t__ ssize_t ;


 int errno ;
 int mei_deinit (struct mei*) ;
 int mei_err (struct mei*,char*,scalar_t__,int ) ;
 int mei_msg (struct mei*,char*,scalar_t__) ;
 scalar_t__ read (int ,unsigned char*,scalar_t__) ;
 int strerror (int ) ;

__attribute__((used)) static ssize_t mei_recv_msg(struct mei *me, unsigned char *buffer,
   ssize_t len, unsigned long timeout)
{
 ssize_t rc;

 mei_msg(me, "call read length = %zd\n", len);

 rc = read(me->fd, buffer, len);
 if (rc < 0) {
  mei_err(me, "read failed with status %zd %s\n",
    rc, strerror(errno));
  mei_deinit(me);
 } else {
  mei_msg(me, "read succeeded with result %zd\n", rc);
 }
 return rc;
}
