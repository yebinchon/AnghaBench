
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdarray {int nr; int nr_alloc; TYPE_1__* entries; int nr_autogrow; } ;
struct TYPE_2__ {int fd; short events; } ;


 int ENOMEM ;
 scalar_t__ fdarray__grow (struct fdarray*,int ) ;

int fdarray__add(struct fdarray *fda, int fd, short revents)
{
 int pos = fda->nr;

 if (fda->nr == fda->nr_alloc &&
     fdarray__grow(fda, fda->nr_autogrow) < 0)
  return -ENOMEM;

 fda->entries[fda->nr].fd = fd;
 fda->entries[fda->nr].events = revents;
 fda->nr++;
 return pos;
}
