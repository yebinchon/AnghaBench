
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct msghdr {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int qpair; } ;


 int vmci_qpair_enquev (int ,struct msghdr*,size_t,int ) ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;

__attribute__((used)) static ssize_t vmci_transport_stream_enqueue(
 struct vsock_sock *vsk,
 struct msghdr *msg,
 size_t len)
{
 return vmci_qpair_enquev(vmci_trans(vsk)->qpair, msg, len, 0);
}
