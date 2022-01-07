
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct epoll_event {TYPE_1__ data; int events; } ;


 int EPOLLIN ;
 int EPOLL_CTL_ADD ;
 int attach_bpf (int) ;
 int build_rcv_group (int*,int,int,int) ;
 int close (int) ;
 int epoll_create (int) ;
 scalar_t__ epoll_ctl (int,int ,int,struct epoll_event*) ;
 int errno ;
 int error (int,int ,char*) ;
 int receive_on_node (int*,int,int,int,int) ;
 int send_from_node (int,int,int) ;

__attribute__((used)) static void test(int *rcv_fd, int len, int family, int proto)
{
 struct epoll_event ev;
 int epfd, node;

 build_rcv_group(rcv_fd, len, family, proto);
 attach_bpf(rcv_fd[0]);

 epfd = epoll_create(1);
 if (epfd < 0)
  error(1, errno, "failed to create epoll");
 for (node = 0; node < len; ++node) {
  ev.events = EPOLLIN;
  ev.data.fd = rcv_fd[node];
  if (epoll_ctl(epfd, EPOLL_CTL_ADD, rcv_fd[node], &ev))
   error(1, errno, "failed to register sock epoll");
 }


 for (node = 0; node < len; ++node) {
  send_from_node(node, family, proto);
  receive_on_node(rcv_fd, len, epfd, node, proto);
 }


 for (node = len - 1; node >= 0; --node) {
  send_from_node(node, family, proto);
  receive_on_node(rcv_fd, len, epfd, node, proto);
 }

 close(epfd);
 for (node = 0; node < len; ++node)
  close(rcv_fd[node]);
}
