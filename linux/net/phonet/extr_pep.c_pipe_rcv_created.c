
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {scalar_t__ data0; } ;
struct pep_sock {scalar_t__ rx_fc; scalar_t__ tx_fc; } ;
typedef int buf ;


 int EINVAL ;
 scalar_t__ PN_LEGACY_FLOW_CONTROL ;

 int __skb_pull (struct sk_buff*,int) ;
 scalar_t__* pep_get_sb (struct sk_buff*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 struct pep_sock* pep_sk (struct sock*) ;
 struct pnpipehdr* pnp_hdr (struct sk_buff*) ;

__attribute__((used)) static int pipe_rcv_created(struct sock *sk, struct sk_buff *skb)
{
 struct pep_sock *pn = pep_sk(sk);
 struct pnpipehdr *hdr = pnp_hdr(skb);
 u8 n_sb = hdr->data0;

 pn->rx_fc = pn->tx_fc = PN_LEGACY_FLOW_CONTROL;
 __skb_pull(skb, sizeof(*hdr));
 while (n_sb > 0) {
  u8 type, buf[2], len = sizeof(buf);
  u8 *data = pep_get_sb(skb, &type, &len, buf);

  if (data == ((void*)0))
   return -EINVAL;
  switch (type) {
  case 128:
   if (len < 2 || (data[0] | data[1]) > 3)
    break;
   pn->tx_fc = data[0] & 3;
   pn->rx_fc = data[1] & 3;
   break;
  }
  n_sb--;
 }
 return 0;
}
