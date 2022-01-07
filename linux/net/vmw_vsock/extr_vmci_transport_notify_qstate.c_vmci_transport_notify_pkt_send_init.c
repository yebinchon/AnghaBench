
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_transport_send_notify_data {scalar_t__ produce_tail; scalar_t__ consume_head; } ;
struct sock {int dummy; } ;



__attribute__((used)) static int
vmci_transport_notify_pkt_send_init(
    struct sock *sk,
    struct vmci_transport_send_notify_data *data)
{
 data->consume_head = 0;
 data->produce_tail = 0;

 return 0;
}
