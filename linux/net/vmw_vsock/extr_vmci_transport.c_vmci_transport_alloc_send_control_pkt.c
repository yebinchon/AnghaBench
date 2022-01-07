
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct vmci_transport_waiting_info {int dummy; } ;
struct vmci_transport_packet {int dummy; } ;
struct vmci_handle {int dummy; } ;
struct sockaddr_vm {int dummy; } ;
typedef enum vmci_transport_packet_type { ____Placeholder_vmci_transport_packet_type } vmci_transport_packet_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __vmci_transport_send_control_pkt (struct vmci_transport_packet*,struct sockaddr_vm*,struct sockaddr_vm*,int,int ,int ,struct vmci_transport_waiting_info*,int ,struct vmci_handle,int) ;
 int kfree (struct vmci_transport_packet*) ;
 struct vmci_transport_packet* kmalloc (int,int ) ;

__attribute__((used)) static int
vmci_transport_alloc_send_control_pkt(struct sockaddr_vm *src,
          struct sockaddr_vm *dst,
          enum vmci_transport_packet_type type,
          u64 size,
          u64 mode,
          struct vmci_transport_waiting_info *wait,
          u16 proto,
          struct vmci_handle handle)
{
 struct vmci_transport_packet *pkt;
 int err;

 pkt = kmalloc(sizeof(*pkt), GFP_KERNEL);
 if (!pkt)
  return -ENOMEM;

 err = __vmci_transport_send_control_pkt(pkt, src, dst, type, size,
      mode, wait, proto, handle,
      1);
 kfree(pkt);

 return err;
}
