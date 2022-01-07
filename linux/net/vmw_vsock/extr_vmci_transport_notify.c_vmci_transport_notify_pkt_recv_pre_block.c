
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_transport_recv_notify_data {int notify_on_block; } ;
struct sock {int dummy; } ;


 int EHOSTUNREACH ;
 int send_waiting_read (struct sock*,size_t) ;
 int vmci_transport_send_read_notification (struct sock*) ;

__attribute__((used)) static int
vmci_transport_notify_pkt_recv_pre_block(
    struct sock *sk,
    size_t target,
    struct vmci_transport_recv_notify_data *data)
{
 int err = 0;


 if (!send_waiting_read(sk, target)) {
  err = -EHOSTUNREACH;
  return err;
 }
 return err;
}
