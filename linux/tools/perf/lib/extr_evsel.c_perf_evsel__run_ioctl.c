
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int fd; } ;


 int FD (struct perf_evsel*,int,int) ;
 int ioctl (int,int,void*) ;
 int xyarray__max_x (int ) ;
 int xyarray__max_y (int ) ;

__attribute__((used)) static int perf_evsel__run_ioctl(struct perf_evsel *evsel,
     int ioc, void *arg)
{
 int cpu, thread;

 for (cpu = 0; cpu < xyarray__max_x(evsel->fd); cpu++) {
  for (thread = 0; thread < xyarray__max_y(evsel->fd); thread++) {
   int fd = FD(evsel, cpu, thread),
       err = ioctl(fd, ioc, arg);

   if (err)
    return err;
  }
 }

 return 0;
}
