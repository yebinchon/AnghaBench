
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdarray {int nr; int nr_alloc; TYPE_1__* entries; } ;
struct TYPE_2__ {int fd; short revents; } ;



__attribute__((used)) static void fdarray__init_revents(struct fdarray *fda, short revents)
{
 int fd;

 fda->nr = fda->nr_alloc;

 for (fd = 0; fd < fda->nr; ++fd) {
  fda->entries[fd].fd = fda->nr - fd;
  fda->entries[fd].revents = revents;
 }
}
