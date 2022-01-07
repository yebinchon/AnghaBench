
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int peer_shutdown; } ;
struct vmci_transport_send_notify_data {int dummy; } ;
struct sock {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int qpair; } ;


 int RCV_SHUTDOWN ;
 int VMCI_TRANSPORT_MAX_DGRAM_RESENDS ;
 int pr_err (char*,struct sock*) ;
 int smp_mb () ;
 scalar_t__ vmci_qpair_produce_buf_ready (int ) ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;
 int vmci_transport_send_wrote (struct sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int
vmci_transport_notify_pkt_send_post_enqueue(
    struct sock *sk,
    ssize_t written,
    struct vmci_transport_send_notify_data *data)
{
 int err = 0;
 struct vsock_sock *vsk;
 bool sent_wrote = 0;
 bool was_empty;
 int retries = 0;

 vsk = vsock_sk(sk);

 smp_mb();

 was_empty =
  vmci_qpair_produce_buf_ready(vmci_trans(vsk)->qpair) == written;
 if (was_empty) {
  while (!(vsk->peer_shutdown & RCV_SHUTDOWN) &&
         !sent_wrote &&
         retries < VMCI_TRANSPORT_MAX_DGRAM_RESENDS) {
   err = vmci_transport_send_wrote(sk);
   if (err >= 0)
    sent_wrote = 1;

   retries++;
  }
 }

 if (retries >= VMCI_TRANSPORT_MAX_DGRAM_RESENDS && !sent_wrote) {
  pr_err("%p unable to send wrote notification to peer\n",
         sk);
  return err;
 }

 return err;
}
