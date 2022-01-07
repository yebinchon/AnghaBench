
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct vmci_transport_waiting_info {int dummy; } ;
struct vmci_transport_packet {int dg; } ;
struct vmci_handle {int dummy; } ;
struct sockaddr_vm {int dummy; } ;
typedef enum vmci_transport_packet_type { ____Placeholder_vmci_transport_packet_type } vmci_transport_packet_type ;


 int vmci_datagram_send (int *) ;
 int vmci_transport_error_to_vsock_error (int) ;
 int vmci_transport_packet_init (struct vmci_transport_packet*,struct sockaddr_vm*,struct sockaddr_vm*,int,int ,int ,struct vmci_transport_waiting_info*,int ,struct vmci_handle) ;

__attribute__((used)) static int
__vmci_transport_send_control_pkt(struct vmci_transport_packet *pkt,
      struct sockaddr_vm *src,
      struct sockaddr_vm *dst,
      enum vmci_transport_packet_type type,
      u64 size,
      u64 mode,
      struct vmci_transport_waiting_info *wait,
      u16 proto,
      struct vmci_handle handle,
      bool convert_error)
{
 int err;

 vmci_transport_packet_init(pkt, src, dst, type, size, mode, wait,
       proto, handle);
 err = vmci_datagram_send(&pkt->dg);
 if (convert_error && (err < 0))
  return vmci_transport_error_to_vsock_error(err);

 return err;
}
