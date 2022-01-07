
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct TYPE_2__ {int qpair; } ;


 int PKT_FIELD (struct vsock_sock*,int ) ;
 int peer_waiting_read ;
 scalar_t__ vmci_qpair_produce_buf_ready (int ) ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;

__attribute__((used)) static bool vmci_transport_notify_waiting_read(struct vsock_sock *vsk)
{
 return 1;

}
