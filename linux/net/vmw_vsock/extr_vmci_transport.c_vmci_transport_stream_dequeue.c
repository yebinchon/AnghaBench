
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct msghdr {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int qpair; } ;


 int MSG_PEEK ;
 int vmci_qpair_dequev (int ,struct msghdr*,size_t,int ) ;
 int vmci_qpair_peekv (int ,struct msghdr*,size_t,int ) ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;

__attribute__((used)) static ssize_t vmci_transport_stream_dequeue(
 struct vsock_sock *vsk,
 struct msghdr *msg,
 size_t len,
 int flags)
{
 if (flags & MSG_PEEK)
  return vmci_qpair_peekv(vmci_trans(vsk)->qpair, msg, len, 0);
 else
  return vmci_qpair_dequev(vmci_trans(vsk)->qpair, msg, len, 0);
}
