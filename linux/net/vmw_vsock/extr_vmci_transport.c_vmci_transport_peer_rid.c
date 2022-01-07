
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ VMADDR_CID_HYPERVISOR ;
 scalar_t__ VMCI_TRANSPORT_HYPERVISOR_PACKET_RID ;
 scalar_t__ VMCI_TRANSPORT_PACKET_RID ;

__attribute__((used)) static u32 vmci_transport_peer_rid(u32 peer_cid)
{
 if (VMADDR_CID_HYPERVISOR == peer_cid)
  return VMCI_TRANSPORT_HYPERVISOR_PACKET_RID;

 return VMCI_TRANSPORT_PACKET_RID;
}
