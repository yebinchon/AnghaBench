
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmci_event_data {int dummy; } ;


 int vmci_transport_handle_detach ;
 int vsock_for_each_connected_socket (int ) ;

__attribute__((used)) static void vmci_transport_qp_resumed_cb(u32 sub_id,
      const struct vmci_event_data *e_data,
      void *client_data)
{
 vsock_for_each_connected_socket(vmci_transport_handle_detach);
}
