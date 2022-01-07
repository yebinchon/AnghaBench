
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int VMCI_INVALID_HANDLE ;
 int VMCI_TRANSPORT_PACKET_TYPE_READ ;
 int VSOCK_PROTO_INVALID ;
 int vmci_transport_send_control_pkt (struct sock*,int ,int ,int ,int *,int ,int ) ;

int vmci_transport_send_read(struct sock *sk)
{
 return vmci_transport_send_control_pkt(
     sk, VMCI_TRANSPORT_PACKET_TYPE_READ, 0,
     0, ((void*)0), VSOCK_PROTO_INVALID,
     VMCI_INVALID_HANDLE);
}
