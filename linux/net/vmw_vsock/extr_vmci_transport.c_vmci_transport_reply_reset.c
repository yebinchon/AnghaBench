
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_transport_packet {int dummy; } ;


 int VMCI_INVALID_HANDLE ;
 int VMCI_TRANSPORT_PACKET_TYPE_RST ;
 int vmci_transport_reply_control_pkt_fast (struct vmci_transport_packet*,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int vmci_transport_reply_reset(struct vmci_transport_packet *pkt)
{
 return vmci_transport_reply_control_pkt_fast(
      pkt,
      VMCI_TRANSPORT_PACKET_TYPE_RST,
      0, 0, ((void*)0),
      VMCI_INVALID_HANDLE);
}
