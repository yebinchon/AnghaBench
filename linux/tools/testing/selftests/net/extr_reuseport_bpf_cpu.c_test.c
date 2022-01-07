
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
 int receive_on_cpu (int*,int,int,int,int) ;
 int send_from_cpu (int,int,int) ;

__attribute__((used)) static void test(int *rcv_fd, int len, int family, int proto)
{
 struct epoll_event ev;
 int epfd, cpu;

 build_rcv_group(rcv_fd, len, family, proto);
 attach_bpf(rcv_fd[0]);

 epfd = epoll_create(1);
 if (epfd < 0)
  error(1, errno, "failed to create epoll");
 for (cpu = 0; cpu < len; ++cpu) {
  ev.events = EPOLLIN;
  ev.data.fd = rcv_fd[cpu];
  if (epoll_ctl(epfd, EPOLL_CTL_ADD, rcv_fd[cpu], &ev))
   error(1, errno, "failed to register sock epoll");
 }


 for (cpu = 0; cpu < len; ++cpu) {
  send_from_cpu(cpu, family, proto);
  receive_on_cpu(rcv_fd, len, epfd, cpu, proto);
 }


 for (cpu = len - 1; cpu >= 0; --cpu) {
  send_from_cpu(cpu, family, proto);
  receive_on_cpu(rcv_fd, len, epfd, cpu, proto);
 }


 for (cpu = 0; cpu < len; cpu += 2) {
  send_from_cpu(cpu, family, proto);
  receive_on_cpu(rcv_fd, len, epfd, cpu, proto);
 }


 for (cpu = 1; cpu < len; cpu += 2) {
  send_from_cpu(cpu, family, proto);
  receive_on_cpu(rcv_fd, len, epfd, cpu, proto);
 }

 close(epfd);
 for (cpu = 0; cpu < len; ++cpu)
  close(rcv_fd[cpu]);
}
