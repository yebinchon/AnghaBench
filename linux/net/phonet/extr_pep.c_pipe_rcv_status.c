
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_write_space ) (struct sock*) ;} ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {scalar_t__ pep_type; int* data; } ;
struct pep_sock {int tx_credits; int tx_fc; } ;


 int EINVAL ;
 int EOPNOTSUPP ;



 int PN_MULTI_CREDIT_FLOW_CONTROL ;



 scalar_t__ PN_PEP_TYPE_COMMON ;
 int atomic_add (int,int *) ;
 int atomic_set (int *,int) ;
 int net_dbg_ratelimited (char*,unsigned int) ;
 struct pep_sock* pep_sk (struct sock*) ;
 struct pnpipehdr* pnp_hdr (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int pipe_rcv_status(struct sock *sk, struct sk_buff *skb)
{
 struct pep_sock *pn = pep_sk(sk);
 struct pnpipehdr *hdr;
 int wake = 0;

 if (!pskb_may_pull(skb, sizeof(*hdr) + 4))
  return -EINVAL;

 hdr = pnp_hdr(skb);
 if (hdr->pep_type != PN_PEP_TYPE_COMMON) {
  net_dbg_ratelimited("Phonet unknown PEP type: %u\n",
        (unsigned int)hdr->pep_type);
  return -EOPNOTSUPP;
 }

 switch (hdr->data[0]) {
 case 129:
  switch (pn->tx_fc) {
  case 131:
   switch (hdr->data[3]) {
   case 133:
    atomic_set(&pn->tx_credits, 0);
    break;
   case 132:
    atomic_set(&pn->tx_credits, wake = 1);
    break;
   }
   break;
  case 130:
   if (hdr->data[3] == 132)
    atomic_set(&pn->tx_credits, wake = 1);
   break;
  }
  break;

 case 128:
  if (pn->tx_fc != PN_MULTI_CREDIT_FLOW_CONTROL)
   break;
  atomic_add(wake = hdr->data[3], &pn->tx_credits);
  break;

 default:
  net_dbg_ratelimited("Phonet unknown PEP indication: %u\n",
        (unsigned int)hdr->data[0]);
  return -EOPNOTSUPP;
 }
 if (wake)
  sk->sk_write_space(sk);
 return 0;
}
