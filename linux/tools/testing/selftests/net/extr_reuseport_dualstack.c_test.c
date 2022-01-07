
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int test_family ;
struct TYPE_2__ {int fd; } ;
struct epoll_event {TYPE_1__ data; int events; } ;
typedef int socklen_t ;


 int AF_INET ;
 int EPOLLIN ;
 int EPOLL_CTL_ADD ;
 int SOL_SOCKET ;
 int SO_DOMAIN ;
 int close (int) ;
 int epoll_create (int) ;
 scalar_t__ epoll_ctl (int,int ,int,struct epoll_event*) ;
 int errno ;
 int error (int,int ,char*,...) ;
 scalar_t__ getsockopt (int,int ,int ,int*,int*) ;
 int receive_once (int,int) ;
 int send_from_v4 (int) ;

__attribute__((used)) static void test(int *rcv_fds, int count, int proto)
{
 struct epoll_event ev;
 int epfd, i, test_fd;
 int test_family;
 socklen_t len;

 epfd = epoll_create(1);
 if (epfd < 0)
  error(1, errno, "failed to create epoll");

 ev.events = EPOLLIN;
 for (i = 0; i < count; ++i) {
  ev.data.fd = rcv_fds[i];
  if (epoll_ctl(epfd, EPOLL_CTL_ADD, rcv_fds[i], &ev))
   error(1, errno, "failed to register sock epoll");
 }

 send_from_v4(proto);

 test_fd = receive_once(epfd, proto);
 len = sizeof(test_family);
 if (getsockopt(test_fd, SOL_SOCKET, SO_DOMAIN, &test_family, &len))
  error(1, errno, "failed to read socket domain");
 if (test_family != AF_INET)
  error(1, 0, "expected to receive on v4 socket but got v6 (%d)",
        test_family);

 close(epfd);
}
