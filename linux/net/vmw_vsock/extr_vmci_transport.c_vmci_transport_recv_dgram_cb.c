
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct TYPE_2__ {int context; } ;
struct vmci_datagram {TYPE_1__ src; } ;
struct sock {int dummy; } ;
struct sk_buff {int data; } ;


 int GFP_ATOMIC ;
 size_t VMCI_DG_SIZE (struct vmci_datagram*) ;
 int VMCI_ERROR_NO_ACCESS ;
 int VMCI_ERROR_NO_MEM ;
 int VMCI_SUCCESS ;
 struct sk_buff* alloc_skb (size_t,int ) ;
 int memcpy (int ,struct vmci_datagram*,size_t) ;
 int sk_receive_skb (struct sock*,struct sk_buff*,int ) ;
 int skb_put (struct sk_buff*,size_t) ;
 int sock_hold (struct sock*) ;
 int vmci_transport_allow_dgram (struct vsock_sock*,int ) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int vmci_transport_recv_dgram_cb(void *data, struct vmci_datagram *dg)
{
 struct sock *sk;
 size_t size;
 struct sk_buff *skb;
 struct vsock_sock *vsk;

 sk = (struct sock *)data;
 vsk = vsock_sk(sk);
 if (!vmci_transport_allow_dgram(vsk, dg->src.context))
  return VMCI_ERROR_NO_ACCESS;

 size = VMCI_DG_SIZE(dg);


 skb = alloc_skb(size, GFP_ATOMIC);
 if (!skb)
  return VMCI_ERROR_NO_MEM;


 sock_hold(sk);
 skb_put(skb, size);
 memcpy(skb->data, dg, size);
 sk_receive_skb(sk, skb, 0);

 return VMCI_SUCCESS;
}
