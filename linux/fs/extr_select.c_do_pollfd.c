
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pollfd {int fd; int revents; int events; } ;
struct fd {int file; } ;
struct TYPE_4__ {int _key; } ;
typedef TYPE_1__ poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLNVAL ;
 int demangle_poll (int ) ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int mangle_poll (int) ;
 int vfs_poll (int ,TYPE_1__*) ;

__attribute__((used)) static inline __poll_t do_pollfd(struct pollfd *pollfd, poll_table *pwait,
         bool *can_busy_poll,
         __poll_t busy_flag)
{
 int fd = pollfd->fd;
 __poll_t mask = 0, filter;
 struct fd f;

 if (fd < 0)
  goto out;
 mask = EPOLLNVAL;
 f = fdget(fd);
 if (!f.file)
  goto out;


 filter = demangle_poll(pollfd->events) | EPOLLERR | EPOLLHUP;
 pwait->_key = filter | busy_flag;
 mask = vfs_poll(f.file, pwait);
 if (mask & busy_flag)
  *can_busy_poll = 1;
 mask &= filter;
 fdput(f);

out:

 pollfd->revents = mangle_poll(mask);
 return mask;
}
