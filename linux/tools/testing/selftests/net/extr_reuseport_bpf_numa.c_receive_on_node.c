
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct epoll_event {TYPE_1__ data; } ;
typedef int buf ;


 int SOCK_STREAM ;
 int accept (int,int *,int *) ;
 int close (int) ;
 int epoll_wait (int,struct epoll_event*,int,int) ;
 int errno ;
 int error (int,int ,char*) ;
 int fprintf (int ,char*,int,int) ;
 int recv (int,char*,int,int ) ;
 int stderr ;

__attribute__((used)) static
void receive_on_node(int *rcv_fd, int len, int epfd, int node_id, int proto)
{
 struct epoll_event ev;
 int i, fd;
 char buf[8];

 i = epoll_wait(epfd, &ev, 1, -1);
 if (i < 0)
  error(1, errno, "epoll_wait failed");

 if (proto == SOCK_STREAM) {
  fd = accept(ev.data.fd, ((void*)0), ((void*)0));
  if (fd < 0)
   error(1, errno, "failed to accept");
  i = recv(fd, buf, sizeof(buf), 0);
  close(fd);
 } else {
  i = recv(ev.data.fd, buf, sizeof(buf), 0);
 }

 if (i < 0)
  error(1, errno, "failed to recv");

 for (i = 0; i < len; ++i)
  if (ev.data.fd == rcv_fd[i])
   break;
 if (i == len)
  error(1, 0, "failed to find socket");
 fprintf(stderr, "send node %d, receive socket %d\n", node_id, i);
 if (node_id != i)
  error(1, 0, "node id/receive socket mismatch");
}
