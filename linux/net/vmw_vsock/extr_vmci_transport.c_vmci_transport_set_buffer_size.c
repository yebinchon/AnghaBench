
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vsock_sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ queue_pair_min_size; scalar_t__ queue_pair_max_size; scalar_t__ queue_pair_size; } ;


 TYPE_1__* vmci_trans (struct vsock_sock*) ;

__attribute__((used)) static void vmci_transport_set_buffer_size(struct vsock_sock *vsk, u64 val)
{
 if (val < vmci_trans(vsk)->queue_pair_min_size)
  vmci_trans(vsk)->queue_pair_min_size = val;
 if (val > vmci_trans(vsk)->queue_pair_max_size)
  vmci_trans(vsk)->queue_pair_max_size = val;
 vmci_trans(vsk)->queue_pair_size = val;
}
