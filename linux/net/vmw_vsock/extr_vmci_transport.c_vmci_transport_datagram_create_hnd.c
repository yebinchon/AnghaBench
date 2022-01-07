
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_datagram_recv_cb ;
typedef int u32 ;
struct vmci_handle {int dummy; } ;


 int VMCI_ERROR_NO_ACCESS ;
 int VMCI_PRIVILEGE_FLAG_TRUSTED ;
 int vmci_datagram_create_handle (int ,int ,int ,void*,struct vmci_handle*) ;
 int vmci_datagram_create_handle_priv (int ,int ,int ,int ,void*,struct vmci_handle*) ;

__attribute__((used)) static int
vmci_transport_datagram_create_hnd(u32 resource_id,
       u32 flags,
       vmci_datagram_recv_cb recv_cb,
       void *client_data,
       struct vmci_handle *out_handle)
{
 int err = 0;





 err = vmci_datagram_create_handle_priv(resource_id, flags,
            VMCI_PRIVILEGE_FLAG_TRUSTED,
            recv_cb,
            client_data, out_handle);

 if (err == VMCI_ERROR_NO_ACCESS)
  err = vmci_datagram_create_handle(resource_id, flags,
        recv_cb, client_data,
        out_handle);

 return err;
}
