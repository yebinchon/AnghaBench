
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;


 int VMCI_INVALID_HANDLE ;
 int VMCI_TRANSPORT_PACKET_TYPE_REQUEST2 ;
 int vmci_transport_send_control_pkt (struct sock*,int ,size_t,int ,int *,int ,int ) ;

__attribute__((used)) static int vmci_transport_send_conn_request2(struct sock *sk, size_t size,
          u16 version)
{
 return vmci_transport_send_control_pkt(
     sk, VMCI_TRANSPORT_PACKET_TYPE_REQUEST2,
     size, 0, ((void*)0), version,
     VMCI_INVALID_HANDLE);
}
