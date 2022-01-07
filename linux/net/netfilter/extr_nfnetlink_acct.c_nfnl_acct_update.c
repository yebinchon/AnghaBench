
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nf_acct {int bytes; int pkts; } ;


 int atomic64_add (int ,int *) ;
 int atomic64_inc (int *) ;

void nfnl_acct_update(const struct sk_buff *skb, struct nf_acct *nfacct)
{
 atomic64_inc(&nfacct->pkts);
 atomic64_add(skb->len, &nfacct->bytes);
}
