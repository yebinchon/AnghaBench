
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct sockaddr_vm {int dummy; } ;
struct TYPE_2__ {int (* dgram_bind ) (struct vsock_sock*,struct sockaddr_vm*) ;} ;


 int stub1 (struct vsock_sock*,struct sockaddr_vm*) ;
 TYPE_1__* transport ;

__attribute__((used)) static int __vsock_bind_dgram(struct vsock_sock *vsk,
         struct sockaddr_vm *addr)
{
 return transport->dgram_bind(vsk, addr);
}
