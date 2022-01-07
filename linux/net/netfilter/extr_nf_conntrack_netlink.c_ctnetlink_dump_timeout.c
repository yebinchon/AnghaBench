
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;


 int CTA_TIMEOUT ;
 long HZ ;
 int htonl (long) ;
 long nf_ct_expires (struct nf_conn const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int ctnetlink_dump_timeout(struct sk_buff *skb, const struct nf_conn *ct)
{
 long timeout = nf_ct_expires(ct) / HZ;

 if (nla_put_be32(skb, CTA_TIMEOUT, htonl(timeout)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
