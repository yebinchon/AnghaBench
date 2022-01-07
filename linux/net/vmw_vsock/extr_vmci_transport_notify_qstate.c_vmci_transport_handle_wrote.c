
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_transport_packet {int dummy; } ;
struct sockaddr_vm {int dummy; } ;
struct sock {int (* sk_data_ready ) (struct sock*) ;} ;


 int stub1 (struct sock*) ;

__attribute__((used)) static void
vmci_transport_handle_wrote(struct sock *sk,
       struct vmci_transport_packet *pkt,
       bool bottom_half,
       struct sockaddr_vm *dst, struct sockaddr_vm *src)
{
 sk->sk_data_ready(sk);
}
