
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vsock_sock {scalar_t__ cached_peer; int cached_peer_allow_dgram; } ;


 scalar_t__ VMADDR_CID_HYPERVISOR ;
 int VMCI_PRIVILEGE_FLAG_RESTRICTED ;
 int vmci_context_get_priv_flags (scalar_t__) ;
 int vmci_transport_is_trusted (struct vsock_sock*,scalar_t__) ;

__attribute__((used)) static bool vmci_transport_allow_dgram(struct vsock_sock *vsock, u32 peer_cid)
{
 if (VMADDR_CID_HYPERVISOR == peer_cid)
  return 1;

 if (vsock->cached_peer != peer_cid) {
  vsock->cached_peer = peer_cid;
  if (!vmci_transport_is_trusted(vsock, peer_cid) &&
      (vmci_context_get_priv_flags(peer_cid) &
       VMCI_PRIVILEGE_FLAG_RESTRICTED)) {
   vsock->cached_peer_allow_dgram = 0;
  } else {
   vsock->cached_peer_allow_dgram = 1;
  }
 }

 return vsock->cached_peer_allow_dgram;
}
