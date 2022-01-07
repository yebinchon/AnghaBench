
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct TYPE_2__ {int (* cancel_pkt ) (struct vsock_sock*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct vsock_sock*) ;
 TYPE_1__* transport ;

__attribute__((used)) static int vsock_transport_cancel_pkt(struct vsock_sock *vsk)
{
 if (!transport->cancel_pkt)
  return -EOPNOTSUPP;

 return transport->cancel_pkt(vsk);
}
