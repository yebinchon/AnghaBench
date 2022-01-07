
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct TYPE_2__ {int dg_handle; } ;


 int VMCI_INVALID_HANDLE ;
 int vmci_datagram_destroy_handle (int ) ;
 int vmci_handle_is_invalid (int ) ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;
 int vsock_remove_sock (struct vsock_sock*) ;

__attribute__((used)) static void vmci_transport_release(struct vsock_sock *vsk)
{
 vsock_remove_sock(vsk);

 if (!vmci_handle_is_invalid(vmci_trans(vsk)->dg_handle)) {
  vmci_datagram_destroy_handle(vmci_trans(vsk)->dg_handle);
  vmci_trans(vsk)->dg_handle = VMCI_INVALID_HANDLE;
 }
}
