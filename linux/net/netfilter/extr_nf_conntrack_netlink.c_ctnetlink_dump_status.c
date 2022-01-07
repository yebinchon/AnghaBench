
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_conn {int status; } ;


 int CTA_STATUS ;
 int htonl (int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int ctnetlink_dump_status(struct sk_buff *skb, const struct nf_conn *ct)
{
 if (nla_put_be32(skb, CTA_STATUS, htonl(ct->status)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
