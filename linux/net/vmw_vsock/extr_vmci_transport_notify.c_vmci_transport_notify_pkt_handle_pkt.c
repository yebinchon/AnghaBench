
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_transport_packet {int type; } ;
struct sockaddr_vm {int dummy; } ;
struct sock {int dummy; } ;






 int vmci_transport_handle_read (struct sock*,struct vmci_transport_packet*,int,struct sockaddr_vm*,struct sockaddr_vm*) ;
 int vmci_transport_handle_waiting_read (struct sock*,struct vmci_transport_packet*,int,struct sockaddr_vm*,struct sockaddr_vm*) ;
 int vmci_transport_handle_waiting_write (struct sock*,struct vmci_transport_packet*,int,struct sockaddr_vm*,struct sockaddr_vm*) ;
 int vmci_transport_handle_wrote (struct sock*,struct vmci_transport_packet*,int,struct sockaddr_vm*,struct sockaddr_vm*) ;

__attribute__((used)) static void
vmci_transport_notify_pkt_handle_pkt(
   struct sock *sk,
   struct vmci_transport_packet *pkt,
   bool bottom_half,
   struct sockaddr_vm *dst,
   struct sockaddr_vm *src, bool *pkt_processed)
{
 bool processed = 0;

 switch (pkt->type) {
 case 128:
  vmci_transport_handle_wrote(sk, pkt, bottom_half, dst, src);
  processed = 1;
  break;
 case 131:
  vmci_transport_handle_read(sk, pkt, bottom_half, dst, src);
  processed = 1;
  break;
 case 129:
  vmci_transport_handle_waiting_write(sk, pkt, bottom_half,
          dst, src);
  processed = 1;
  break;

 case 130:
  vmci_transport_handle_waiting_read(sk, pkt, bottom_half,
         dst, src);
  processed = 1;
  break;
 }

 if (pkt_processed)
  *pkt_processed = processed;
}
