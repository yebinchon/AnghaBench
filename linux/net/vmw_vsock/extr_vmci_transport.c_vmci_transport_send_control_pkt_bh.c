
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vmci_transport_waiting_info {int dummy; } ;
struct vmci_transport_packet {int dummy; } ;
struct vmci_handle {int dummy; } ;
struct sockaddr_vm {int dummy; } ;
typedef enum vmci_transport_packet_type { ____Placeholder_vmci_transport_packet_type } vmci_transport_packet_type ;


 int VSOCK_PROTO_INVALID ;
 int __vmci_transport_send_control_pkt (struct vmci_transport_packet*,struct sockaddr_vm*,struct sockaddr_vm*,int,int ,int ,struct vmci_transport_waiting_info*,int ,struct vmci_handle,int) ;

__attribute__((used)) static int
vmci_transport_send_control_pkt_bh(struct sockaddr_vm *src,
       struct sockaddr_vm *dst,
       enum vmci_transport_packet_type type,
       u64 size,
       u64 mode,
       struct vmci_transport_waiting_info *wait,
       struct vmci_handle handle)
{





 static struct vmci_transport_packet pkt;

 return __vmci_transport_send_control_pkt(&pkt, src, dst, type,
       size, mode, wait,
       VSOCK_PROTO_INVALID, handle,
       0);
}
