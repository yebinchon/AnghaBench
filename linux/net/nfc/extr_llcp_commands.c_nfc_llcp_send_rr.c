
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int * data; } ;
struct nfc_llcp_sock {int recv_n; struct nfc_llcp_local* local; } ;
struct nfc_llcp_local {int tx_queue; } ;


 int ENODEV ;
 int ENOMEM ;
 int LLCP_PDU_RR ;
 int LLCP_SEQUENCE_SIZE ;
 struct sk_buff* llcp_allocate_pdu (struct nfc_llcp_sock*,int ,int ) ;
 int pr_debug (char*,int ) ;
 int skb_put (struct sk_buff*,int ) ;
 int skb_queue_head (int *,struct sk_buff*) ;

int nfc_llcp_send_rr(struct nfc_llcp_sock *sock)
{
 struct sk_buff *skb;
 struct nfc_llcp_local *local;

 pr_debug("Send rr nr %d\n", sock->recv_n);

 local = sock->local;
 if (local == ((void*)0))
  return -ENODEV;

 skb = llcp_allocate_pdu(sock, LLCP_PDU_RR, LLCP_SEQUENCE_SIZE);
 if (skb == ((void*)0))
  return -ENOMEM;

 skb_put(skb, LLCP_SEQUENCE_SIZE);

 skb->data[2] = sock->recv_n;

 skb_queue_head(&local->tx_queue, skb);

 return 0;
}
