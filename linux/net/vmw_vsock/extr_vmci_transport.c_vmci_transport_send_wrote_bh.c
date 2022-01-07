
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_vm {int dummy; } ;


 int VMCI_INVALID_HANDLE ;
 int VMCI_TRANSPORT_PACKET_TYPE_WROTE ;
 int vmci_transport_send_control_pkt_bh (struct sockaddr_vm*,struct sockaddr_vm*,int ,int ,int ,int *,int ) ;

int vmci_transport_send_wrote_bh(struct sockaddr_vm *dst,
     struct sockaddr_vm *src)
{
 return vmci_transport_send_control_pkt_bh(
     dst, src,
     VMCI_TRANSPORT_PACKET_TYPE_WROTE, 0,
     0, ((void*)0), VMCI_INVALID_HANDLE);
}
