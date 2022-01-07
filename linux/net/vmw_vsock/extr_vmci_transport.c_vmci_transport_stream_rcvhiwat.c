
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct vsock_sock {int dummy; } ;
struct TYPE_2__ {int consume_size; } ;


 TYPE_1__* vmci_trans (struct vsock_sock*) ;

__attribute__((used)) static u64 vmci_transport_stream_rcvhiwat(struct vsock_sock *vsk)
{
 return vmci_trans(vsk)->consume_size;
}
