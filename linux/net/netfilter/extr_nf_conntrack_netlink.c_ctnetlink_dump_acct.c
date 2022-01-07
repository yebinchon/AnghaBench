
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_conn_acct {int dummy; } ;
struct nf_conn {int dummy; } ;


 int IP_CT_DIR_ORIGINAL ;
 int IP_CT_DIR_REPLY ;
 scalar_t__ dump_counters (struct sk_buff*,struct nf_conn_acct*,int ,int) ;
 struct nf_conn_acct* nf_conn_acct_find (struct nf_conn const*) ;

__attribute__((used)) static int
ctnetlink_dump_acct(struct sk_buff *skb, const struct nf_conn *ct, int type)
{
 struct nf_conn_acct *acct = nf_conn_acct_find(ct);

 if (!acct)
  return 0;

 if (dump_counters(skb, acct, IP_CT_DIR_ORIGINAL, type) < 0)
  return -1;
 if (dump_counters(skb, acct, IP_CT_DIR_REPLY, type) < 0)
  return -1;

 return 0;
}
