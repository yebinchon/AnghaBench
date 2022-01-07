
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct vsock_sock {int dummy; } ;
struct TYPE_2__ {int queue_pair_min_size; } ;


 TYPE_1__* vmci_trans (struct vsock_sock*) ;

__attribute__((used)) static u64 vmci_transport_get_min_buffer_size(struct vsock_sock *vsk)
{
 return vmci_trans(vsk)->queue_pair_min_size;
}
