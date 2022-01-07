
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int context; } ;
struct TYPE_4__ {int context; } ;
struct TYPE_6__ {TYPE_2__ src; TYPE_1__ dst; } ;
struct vmci_transport_packet {int src_port; TYPE_3__ dg; int dst_port; } ;
struct sockaddr_vm {int dummy; } ;


 int vsock_addr_init (struct sockaddr_vm*,int ,int ) ;

__attribute__((used)) static inline void
vmci_transport_packet_get_addresses(struct vmci_transport_packet *pkt,
        struct sockaddr_vm *local,
        struct sockaddr_vm *remote)
{
 vsock_addr_init(local, pkt->dg.dst.context, pkt->dst_port);
 vsock_addr_init(remote, pkt->dg.src.context, pkt->src_port);
}
