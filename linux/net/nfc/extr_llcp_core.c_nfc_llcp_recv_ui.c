
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct sk_buff {int dummy; } ;
struct nfc_llcp_ui_cb {void* ssap; void* dsap; } ;
struct TYPE_2__ {scalar_t__ sk_type; } ;
struct nfc_llcp_sock {TYPE_1__ sk; } ;
struct nfc_llcp_local {int dummy; } ;


 int LLCP_HEADER_SIZE ;
 int LLCP_SAP_SDP ;
 scalar_t__ SOCK_DGRAM ;
 void* nfc_llcp_dsap (struct sk_buff*) ;
 struct nfc_llcp_sock* nfc_llcp_sock_get (struct nfc_llcp_local*,void*,int ) ;
 int nfc_llcp_sock_put (struct nfc_llcp_sock*) ;
 void* nfc_llcp_ssap (struct sk_buff*) ;
 struct nfc_llcp_ui_cb* nfc_llcp_ui_skb_cb (struct sk_buff*) ;
 int pr_debug (char*,void*,void*) ;
 int pr_err (char*) ;
 int skb_get (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int sock_queue_rcv_skb (TYPE_1__*,struct sk_buff*) ;

__attribute__((used)) static void nfc_llcp_recv_ui(struct nfc_llcp_local *local,
        struct sk_buff *skb)
{
 struct nfc_llcp_sock *llcp_sock;
 struct nfc_llcp_ui_cb *ui_cb;
 u8 dsap, ssap;

 dsap = nfc_llcp_dsap(skb);
 ssap = nfc_llcp_ssap(skb);

 ui_cb = nfc_llcp_ui_skb_cb(skb);
 ui_cb->dsap = dsap;
 ui_cb->ssap = ssap;

 pr_debug("%d %d\n", dsap, ssap);


 llcp_sock = nfc_llcp_sock_get(local, dsap, LLCP_SAP_SDP);
 if (llcp_sock == ((void*)0) || llcp_sock->sk.sk_type != SOCK_DGRAM)
  return;


 skb_pull(skb, LLCP_HEADER_SIZE);
 if (!sock_queue_rcv_skb(&llcp_sock->sk, skb)) {




  skb_get(skb);
 } else {
  pr_err("Receive queue is full\n");
 }

 nfc_llcp_sock_put(llcp_sock);
}
