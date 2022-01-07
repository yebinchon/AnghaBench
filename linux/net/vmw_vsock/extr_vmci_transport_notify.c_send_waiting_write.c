
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vsock_sock {int dummy; } ;
struct vmci_transport_waiting_info {int generation; scalar_t__ offset; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ produce_size; int qpair; } ;


 int PKT_FIELD (struct vsock_sock*,int ) ;
 int produce_q_generation ;
 int sent_waiting_write ;
 int vmci_qpair_get_produce_indexes (int ,scalar_t__*,scalar_t__*) ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;
 scalar_t__ vmci_transport_send_waiting_write (struct sock*,struct vmci_transport_waiting_info*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static bool send_waiting_write(struct sock *sk, u64 room_needed)
{
 return 1;

}
