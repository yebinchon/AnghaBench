
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int sk; } ;


 int VMCI_INVALID_HANDLE ;
 int VMCI_TRANSPORT_PACKET_TYPE_SHUTDOWN ;
 int VSOCK_PROTO_INVALID ;
 int vmci_transport_send_control_pkt (int *,int ,int ,int,int *,int ,int ) ;

__attribute__((used)) static int vmci_transport_shutdown(struct vsock_sock *vsk, int mode)
{
 return vmci_transport_send_control_pkt(
     &vsk->sk,
     VMCI_TRANSPORT_PACKET_TYPE_SHUTDOWN,
     0, mode, ((void*)0),
     VSOCK_PROTO_INVALID,
     VMCI_INVALID_HANDLE);
}
