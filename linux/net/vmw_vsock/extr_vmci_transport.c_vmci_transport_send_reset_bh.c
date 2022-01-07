
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_transport_packet {scalar_t__ type; } ;
struct sockaddr_vm {int dummy; } ;


 int VMCI_INVALID_HANDLE ;
 scalar_t__ VMCI_TRANSPORT_PACKET_TYPE_RST ;
 int vmci_transport_send_control_pkt_bh (struct sockaddr_vm*,struct sockaddr_vm*,scalar_t__,int ,int ,int *,int ) ;

__attribute__((used)) static int vmci_transport_send_reset_bh(struct sockaddr_vm *dst,
     struct sockaddr_vm *src,
     struct vmci_transport_packet *pkt)
{
 if (pkt->type == VMCI_TRANSPORT_PACKET_TYPE_RST)
  return 0;
 return vmci_transport_send_control_pkt_bh(
     dst, src,
     VMCI_TRANSPORT_PACKET_TYPE_RST, 0,
     0, ((void*)0), VMCI_INVALID_HANDLE);
}
