
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_transport_recv_notify_data {int dummy; } ;
struct sock {int dummy; } ;



__attribute__((used)) static int
vmci_transport_notify_pkt_recv_pre_dequeue(
    struct sock *sk,
    size_t target,
    struct vmci_transport_recv_notify_data *data)
{
 return 0;
}
