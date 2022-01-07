
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ VMADDR_CID_HYPERVISOR ;
 scalar_t__ VMCI_UNITY_PBRPC_REGISTER ;

__attribute__((used)) static bool vmci_transport_dgram_allow(u32 cid, u32 port)
{
 if (cid == VMADDR_CID_HYPERVISOR) {



  return port == VMCI_UNITY_PBRPC_REGISTER;
 }

 return 1;
}
