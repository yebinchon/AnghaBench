
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct nfc_llcp_sock {int ssap; int dsap; int sk; int dev; } ;


 scalar_t__ LLCP_HEADER_SIZE ;
 int MSG_DONTWAIT ;
 struct sk_buff* llcp_add_header (struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* nfc_alloc_send_skb (int ,int *,int ,scalar_t__,int*) ;
 int pr_err (char*) ;

__attribute__((used)) static struct sk_buff *llcp_allocate_pdu(struct nfc_llcp_sock *sock,
      u8 cmd, u16 size)
{
 struct sk_buff *skb;
 int err;

 if (sock->ssap == 0)
  return ((void*)0);

 skb = nfc_alloc_send_skb(sock->dev, &sock->sk, MSG_DONTWAIT,
     size + LLCP_HEADER_SIZE, &err);
 if (skb == ((void*)0)) {
  pr_err("Could not allocate PDU\n");
  return ((void*)0);
 }

 skb = llcp_add_header(skb, sock->dsap, sock->ssap, cmd);

 return skb;
}
