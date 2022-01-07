
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* priv; } ;
struct perf_evlist {TYPE_2__ pollfd; } ;
struct TYPE_3__ {void* ptr; } ;


 int F_SETFL ;
 int O_NONBLOCK ;
 short POLLERR ;
 short POLLHUP ;
 int fcntl (int,int ,int ) ;
 int fdarray__add (TYPE_2__*,int,short) ;

int perf_evlist__add_pollfd(struct perf_evlist *evlist, int fd,
       void *ptr, short revent)
{
 int pos = fdarray__add(&evlist->pollfd, fd, revent | POLLERR | POLLHUP);

 if (pos >= 0) {
  evlist->pollfd.priv[pos].ptr = ptr;
  fcntl(fd, F_SETFL, O_NONBLOCK);
 }

 return pos;
}
