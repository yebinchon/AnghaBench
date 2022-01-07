
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct vsock_sock {int remote_addr; int local_addr; } ;
struct vmci_transport_waiting_info {int dummy; } ;
struct vmci_handle {int dummy; } ;
struct sock {int dummy; } ;
typedef enum vmci_transport_packet_type { ____Placeholder_vmci_transport_packet_type } vmci_transport_packet_type ;


 int EINVAL ;
 int vmci_transport_alloc_send_control_pkt (int *,int *,int,int ,int ,struct vmci_transport_waiting_info*,int ,struct vmci_handle) ;
 int vsock_addr_bound (int *) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int
vmci_transport_send_control_pkt(struct sock *sk,
    enum vmci_transport_packet_type type,
    u64 size,
    u64 mode,
    struct vmci_transport_waiting_info *wait,
    u16 proto,
    struct vmci_handle handle)
{
 struct vsock_sock *vsk;

 vsk = vsock_sk(sk);

 if (!vsock_addr_bound(&vsk->local_addr))
  return -EINVAL;

 if (!vsock_addr_bound(&vsk->remote_addr))
  return -EINVAL;

 return vmci_transport_alloc_send_control_pkt(&vsk->local_addr,
           &vsk->remote_addr,
           type, size, mode,
           wait, proto, handle);
}
