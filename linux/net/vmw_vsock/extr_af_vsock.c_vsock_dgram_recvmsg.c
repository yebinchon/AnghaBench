
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int sk; } ;
struct msghdr {int dummy; } ;
struct TYPE_2__ {int (* dgram_dequeue ) (int ,struct msghdr*,size_t,int) ;} ;


 int stub1 (int ,struct msghdr*,size_t,int) ;
 TYPE_1__* transport ;
 int vsock_sk (int ) ;

__attribute__((used)) static int vsock_dgram_recvmsg(struct socket *sock, struct msghdr *msg,
          size_t len, int flags)
{
 return transport->dgram_dequeue(vsock_sk(sock->sk), msg, len, flags);
}
