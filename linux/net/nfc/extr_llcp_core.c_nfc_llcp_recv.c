
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_llcp_local {int dummy; } ;


 int __nfc_llcp_recv (struct nfc_llcp_local*,struct sk_buff*) ;
 int pr_debug (char*) ;
 int pr_err (char*,int) ;

void nfc_llcp_recv(void *data, struct sk_buff *skb, int err)
{
 struct nfc_llcp_local *local = (struct nfc_llcp_local *) data;

 pr_debug("Received an LLCP PDU\n");
 if (err < 0) {
  pr_err("err %d\n", err);
  return;
 }

 __nfc_llcp_recv(local, skb);
}
