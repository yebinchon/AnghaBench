
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_transport_send_notify_data {int dummy; } ;
struct sock {int dummy; } ;



__attribute__((used)) static int
vmci_transport_notify_pkt_send_pre_block(
    struct sock *sk,
    struct vmci_transport_send_notify_data *data)
{
 return 0;
}
