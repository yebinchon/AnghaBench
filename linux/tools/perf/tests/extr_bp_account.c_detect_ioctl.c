
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;


 int PERF_EVENT_IOC_MODIFY_ATTRIBUTES ;
 int close (int) ;
 int ioctl (int,int ,struct perf_event_attr*) ;
 int the_var ;
 int wp_event (void*,struct perf_event_attr*) ;

__attribute__((used)) static int detect_ioctl(void)
{
 struct perf_event_attr attr;
 int fd, ret = 1;

 fd = wp_event((void *) &the_var, &attr);
 if (fd > 0) {
  ret = ioctl(fd, PERF_EVENT_IOC_MODIFY_ATTRIBUTES, &attr);
  close(fd);
 }

 return ret ? 0 : 1;
}
