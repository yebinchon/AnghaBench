
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_transport_waiting_info {int dummy; } ;
struct sock {int dummy; } ;


 int VMCI_INVALID_HANDLE ;
 int VMCI_TRANSPORT_PACKET_TYPE_WAITING_WRITE ;
 int VSOCK_PROTO_INVALID ;
 int vmci_transport_send_control_pkt (struct sock*,int ,int ,int ,struct vmci_transport_waiting_info*,int ,int ) ;

int vmci_transport_send_waiting_write(struct sock *sk,
          struct vmci_transport_waiting_info *wait)
{
 return vmci_transport_send_control_pkt(
    sk, VMCI_TRANSPORT_PACKET_TYPE_WAITING_WRITE,
    0, 0, wait, VSOCK_PROTO_INVALID,
    VMCI_INVALID_HANDLE);
}
