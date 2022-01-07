
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_llcp_sock {struct nfc_dev* dev; struct nfc_llcp_local* local; } ;
struct nfc_llcp_local {int tx_queue; } ;
struct nfc_dev {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int LLCP_PDU_DISC ;
 struct sk_buff* llcp_allocate_pdu (struct nfc_llcp_sock*,int ,int ) ;
 int pr_debug (char*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

int nfc_llcp_send_disconnect(struct nfc_llcp_sock *sock)
{
 struct sk_buff *skb;
 struct nfc_dev *dev;
 struct nfc_llcp_local *local;

 pr_debug("Sending DISC\n");

 local = sock->local;
 if (local == ((void*)0))
  return -ENODEV;

 dev = sock->dev;
 if (dev == ((void*)0))
  return -ENODEV;

 skb = llcp_allocate_pdu(sock, LLCP_PDU_DISC, 0);
 if (skb == ((void*)0))
  return -ENOMEM;

 skb_queue_tail(&local->tx_queue, skb);

 return 0;
}
