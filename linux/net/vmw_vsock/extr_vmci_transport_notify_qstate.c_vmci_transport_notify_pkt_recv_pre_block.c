
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_transport_recv_notify_data {int notify_on_block; } ;
struct sock {int dummy; } ;


 int vmci_transport_send_read_notification (struct sock*) ;
 int vsock_block_update_write_window (struct sock*) ;

__attribute__((used)) static int
vmci_transport_notify_pkt_recv_pre_block(
    struct sock *sk,
    size_t target,
    struct vmci_transport_recv_notify_data *data)
{
 int err = 0;

 vsock_block_update_write_window(sk);

 if (data->notify_on_block) {
  err = vmci_transport_send_read_notification(sk);
  if (err < 0)
   return err;
  data->notify_on_block = 0;
 }

 return err;
}
