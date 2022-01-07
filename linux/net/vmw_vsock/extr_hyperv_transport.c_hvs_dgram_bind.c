
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;
struct sockaddr_vm {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int hvs_dgram_bind(struct vsock_sock *vsk, struct sockaddr_vm *addr)
{
 return -EOPNOTSUPP;
}
