
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pollfd {int events; int fd; } ;
typedef int fds ;
struct TYPE_3__ {int xsk; } ;


 int MAX_SOCKS ;
 int POLLIN ;
 int POLLOUT ;
 int l2fwd (TYPE_1__*,struct pollfd*) ;
 int memset (struct pollfd*,int ,int) ;
 int num_socks ;
 scalar_t__ opt_poll ;
 int opt_timeout ;
 int poll (struct pollfd*,int,int ) ;
 int xsk_socket__fd (int ) ;
 TYPE_1__** xsks ;

__attribute__((used)) static void l2fwd_all(void)
{
 struct pollfd fds[MAX_SOCKS];
 int i, ret;

 memset(fds, 0, sizeof(fds));

 for (i = 0; i < num_socks; i++) {
  fds[i].fd = xsk_socket__fd(xsks[i]->xsk);
  fds[i].events = POLLOUT | POLLIN;
 }

 for (;;) {
  if (opt_poll) {
   ret = poll(fds, num_socks, opt_timeout);
   if (ret <= 0)
    continue;
  }

  for (i = 0; i < num_socks; i++)
   l2fwd(xsks[i], fds);
 }
}
