
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct TYPE_2__ {int wait; } ;
struct vmci_transport_packet {TYPE_1__ u; } ;
struct sockaddr_vm {int dummy; } ;
struct sock {int dummy; } ;


 int PKT_FIELD (struct vsock_sock*,int ) ;
 int memcpy (int*,int *,int) ;
 int peer_waiting_read ;
 int peer_waiting_read_info ;
 scalar_t__ vmci_transport_notify_waiting_read (struct vsock_sock*) ;
 scalar_t__ vmci_transport_send_wrote (struct sock*) ;
 scalar_t__ vmci_transport_send_wrote_bh (struct sockaddr_vm*,struct sockaddr_vm*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static void
vmci_transport_handle_waiting_read(struct sock *sk,
       struct vmci_transport_packet *pkt,
       bool bottom_half,
       struct sockaddr_vm *dst,
       struct sockaddr_vm *src)
{
}
