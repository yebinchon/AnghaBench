
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vsock_sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ consume_size; int qpair; } ;


 int PAGE_SIZE ;
 int PKT_FIELD (struct vsock_sock*,int ) ;
 int peer_waiting_write ;
 int peer_waiting_write_detected ;
 scalar_t__ vmci_qpair_consume_free_space (int ) ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;
 int write_notify_min_window ;
 int write_notify_window ;

__attribute__((used)) static bool vmci_transport_notify_waiting_write(struct vsock_sock *vsk)
{
 return 1;

}
