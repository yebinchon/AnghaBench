
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct TYPE_2__ {int qp_handle; } ;


 int vmci_handle_is_invalid (int ) ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;

__attribute__((used)) static bool vmci_transport_stream_is_active(struct vsock_sock *vsk)
{
 return !vmci_handle_is_invalid(vmci_trans(vsk)->qp_handle);
}
