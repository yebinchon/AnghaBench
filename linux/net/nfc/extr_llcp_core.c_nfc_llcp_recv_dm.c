
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_state; int sk_err; } ;
struct sk_buff {int* data; } ;
struct nfc_llcp_sock {struct sock sk; } ;
struct nfc_llcp_local {int dummy; } ;


 int ENXIO ;
 int LLCP_CLOSED ;


 struct nfc_llcp_sock* nfc_llcp_connecting_sock_get (struct nfc_llcp_local*,int) ;
 int nfc_llcp_dsap (struct sk_buff*) ;
 struct nfc_llcp_sock* nfc_llcp_sock_get (struct nfc_llcp_local*,int,int) ;
 int nfc_llcp_sock_put (struct nfc_llcp_sock*) ;
 int nfc_llcp_ssap (struct sk_buff*) ;
 int pr_debug (char*,...) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void nfc_llcp_recv_dm(struct nfc_llcp_local *local, struct sk_buff *skb)
{
 struct nfc_llcp_sock *llcp_sock;
 struct sock *sk;
 u8 dsap, ssap, reason;

 dsap = nfc_llcp_dsap(skb);
 ssap = nfc_llcp_ssap(skb);
 reason = skb->data[2];

 pr_debug("%d %d reason %d\n", ssap, dsap, reason);

 switch (reason) {
 case 129:
 case 128:
  llcp_sock = nfc_llcp_connecting_sock_get(local, dsap);
  break;

 default:
  llcp_sock = nfc_llcp_sock_get(local, dsap, ssap);
  break;
 }

 if (llcp_sock == ((void*)0)) {
  pr_debug("Already closed\n");
  return;
 }

 sk = &llcp_sock->sk;

 sk->sk_err = ENXIO;
 sk->sk_state = LLCP_CLOSED;
 sk->sk_state_change(sk);

 nfc_llcp_sock_put(llcp_sock);
}
