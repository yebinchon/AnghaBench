
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdarray {int nr; int * priv; TYPE_1__* entries; } ;
struct TYPE_2__ {short revents; } ;



int fdarray__filter(struct fdarray *fda, short revents,
      void (*entry_destructor)(struct fdarray *fda, int fd, void *arg),
      void *arg)
{
 int fd, nr = 0;

 if (fda->nr == 0)
  return 0;

 for (fd = 0; fd < fda->nr; ++fd) {
  if (fda->entries[fd].revents & revents) {
   if (entry_destructor)
    entry_destructor(fda, fd, arg);

   continue;
  }

  if (fd != nr) {
   fda->entries[nr] = fda->entries[fd];
   fda->priv[nr] = fda->priv[fd];
  }

  ++nr;
 }

 return fda->nr = nr;
}
