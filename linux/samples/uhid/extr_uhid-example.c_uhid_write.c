
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_event {int dummy; } ;
typedef int ssize_t ;
typedef int ev ;


 int EFAULT ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int write (int,struct uhid_event const*,int) ;

__attribute__((used)) static int uhid_write(int fd, const struct uhid_event *ev)
{
 ssize_t ret;

 ret = write(fd, ev, sizeof(*ev));
 if (ret < 0) {
  fprintf(stderr, "Cannot write to uhid: %m\n");
  return -errno;
 } else if (ret != sizeof(*ev)) {
  fprintf(stderr, "Wrong size written to uhid: %ld != %lu\n",
   ret, sizeof(ev));
  return -EFAULT;
 } else {
  return 0;
 }
}
