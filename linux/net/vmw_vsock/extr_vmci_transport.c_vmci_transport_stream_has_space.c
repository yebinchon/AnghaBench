
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
typedef int s64 ;
struct TYPE_2__ {int qpair; } ;


 int vmci_qpair_produce_free_space (int ) ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;

__attribute__((used)) static s64 vmci_transport_stream_has_space(struct vsock_sock *vsk)
{
 return vmci_qpair_produce_free_space(vmci_trans(vsk)->qpair);
}
