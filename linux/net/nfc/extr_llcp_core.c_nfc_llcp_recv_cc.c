
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_state; } ;
struct sk_buff {scalar_t__ len; int * data; } ;
struct nfc_llcp_sock {int dsap; struct sock sk; } ;
struct nfc_llcp_local {int sockets; int connecting_sockets; } ;


 int LLCP_CONNECTED ;
 int LLCP_DM_NOCONN ;
 size_t LLCP_HEADER_SIZE ;
 struct nfc_llcp_sock* nfc_llcp_connecting_sock_get (struct nfc_llcp_local*,int ) ;
 int nfc_llcp_dsap (struct sk_buff*) ;
 int nfc_llcp_parse_connection_tlv (struct nfc_llcp_sock*,int *,scalar_t__) ;
 int nfc_llcp_send_dm (struct nfc_llcp_local*,int ,int ,int ) ;
 int nfc_llcp_sock_link (int *,struct sock*) ;
 int nfc_llcp_sock_put (struct nfc_llcp_sock*) ;
 int nfc_llcp_sock_unlink (int *,struct sock*) ;
 int nfc_llcp_ssap (struct sk_buff*) ;
 int pr_err (char*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void nfc_llcp_recv_cc(struct nfc_llcp_local *local, struct sk_buff *skb)
{
 struct nfc_llcp_sock *llcp_sock;
 struct sock *sk;
 u8 dsap, ssap;

 dsap = nfc_llcp_dsap(skb);
 ssap = nfc_llcp_ssap(skb);

 llcp_sock = nfc_llcp_connecting_sock_get(local, dsap);
 if (llcp_sock == ((void*)0)) {
  pr_err("Invalid CC\n");
  nfc_llcp_send_dm(local, dsap, ssap, LLCP_DM_NOCONN);

  return;
 }

 sk = &llcp_sock->sk;


 nfc_llcp_sock_unlink(&local->connecting_sockets, sk);
 nfc_llcp_sock_link(&local->sockets, sk);
 llcp_sock->dsap = ssap;

 nfc_llcp_parse_connection_tlv(llcp_sock, &skb->data[LLCP_HEADER_SIZE],
          skb->len - LLCP_HEADER_SIZE);

 sk->sk_state = LLCP_CONNECTED;
 sk->sk_state_change(sk);

 nfc_llcp_sock_put(llcp_sock);
}
