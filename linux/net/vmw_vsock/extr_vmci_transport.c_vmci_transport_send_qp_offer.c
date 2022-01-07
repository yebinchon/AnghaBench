
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_handle {int dummy; } ;
struct sock {int dummy; } ;


 int VMCI_TRANSPORT_PACKET_TYPE_OFFER ;
 int VSOCK_PROTO_INVALID ;
 int vmci_transport_send_control_pkt (struct sock*,int ,int ,int ,int *,int ,struct vmci_handle) ;

__attribute__((used)) static int vmci_transport_send_qp_offer(struct sock *sk,
     struct vmci_handle handle)
{
 return vmci_transport_send_control_pkt(
     sk, VMCI_TRANSPORT_PACKET_TYPE_OFFER, 0,
     0, ((void*)0),
     VSOCK_PROTO_INVALID, handle);
}
