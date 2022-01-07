
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vsock_sock {int dummy; } ;
struct vmci_transport_waiting_info {int generation; scalar_t__ offset; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int consume_size; int qpair; } ;


 scalar_t__ PAGE_SIZE ;
 int PKT_FIELD (struct vsock_sock*,int ) ;
 int consume_q_generation ;
 int min (scalar_t__,int) ;
 int sent_waiting_read ;
 int vmci_qpair_get_consume_indexes (int ,scalar_t__*,scalar_t__*) ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;
 scalar_t__ vmci_transport_send_waiting_read (struct sock*,struct vmci_transport_waiting_info*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;
 int write_notify_window ;

__attribute__((used)) static bool send_waiting_read(struct sock *sk, u64 room_needed)
{
 return 1;

}
