
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;
struct sockaddr_vm {int dummy; } ;
struct msghdr {int dummy; } ;


 int EOPNOTSUPP ;

int
virtio_transport_dgram_enqueue(struct vsock_sock *vsk,
          struct sockaddr_vm *remote_addr,
          struct msghdr *msg,
          size_t dgram_len)
{
 return -EOPNOTSUPP;
}
