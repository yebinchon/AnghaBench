
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_event {int type; } ;
typedef int ssize_t ;
typedef int ev ;


 int EFAULT ;






 int errno ;
 int fprintf (int ,char*,...) ;
 int handle_output (struct uhid_event*) ;
 int memset (struct uhid_event*,int ,int) ;
 int read (int,struct uhid_event*,int) ;
 int stderr ;

__attribute__((used)) static int event(int fd)
{
 struct uhid_event ev;
 ssize_t ret;

 memset(&ev, 0, sizeof(ev));
 ret = read(fd, &ev, sizeof(ev));
 if (ret == 0) {
  fprintf(stderr, "Read HUP on uhid-cdev\n");
  return -EFAULT;
 } else if (ret < 0) {
  fprintf(stderr, "Cannot read uhid-cdev: %m\n");
  return -errno;
 } else if (ret != sizeof(ev)) {
  fprintf(stderr, "Invalid size read from uhid-dev: %ld != %lu\n",
   ret, sizeof(ev));
  return -EFAULT;
 }

 switch (ev.type) {
 case 129:
  fprintf(stderr, "UHID_START from uhid-dev\n");
  break;
 case 128:
  fprintf(stderr, "UHID_STOP from uhid-dev\n");
  break;
 case 132:
  fprintf(stderr, "UHID_OPEN from uhid-dev\n");
  break;
 case 133:
  fprintf(stderr, "UHID_CLOSE from uhid-dev\n");
  break;
 case 131:
  fprintf(stderr, "UHID_OUTPUT from uhid-dev\n");
  handle_output(&ev);
  break;
 case 130:
  fprintf(stderr, "UHID_OUTPUT_EV from uhid-dev\n");
  break;
 default:
  fprintf(stderr, "Invalid event from uhid-dev: %u\n", ev.type);
 }

 return 0;
}
