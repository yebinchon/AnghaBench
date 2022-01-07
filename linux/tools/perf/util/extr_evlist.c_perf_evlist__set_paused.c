
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nr_mmaps; } ;
struct evlist {TYPE_3__* overwrite_mmap; TYPE_1__ core; } ;
struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_2__ core; } ;


 int PERF_EVENT_IOC_PAUSE_OUTPUT ;
 int ioctl (int,int ,int) ;

__attribute__((used)) static int perf_evlist__set_paused(struct evlist *evlist, bool value)
{
 int i;

 if (!evlist->overwrite_mmap)
  return 0;

 for (i = 0; i < evlist->core.nr_mmaps; i++) {
  int fd = evlist->overwrite_mmap[i].core.fd;
  int err;

  if (fd < 0)
   continue;
  err = ioctl(fd, PERF_EVENT_IOC_PAUSE_OUTPUT, value ? 1 : 0);
  if (err)
   return err;
 }
 return 0;
}
