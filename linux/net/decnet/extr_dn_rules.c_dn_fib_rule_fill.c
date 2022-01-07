
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct fib_rule_hdr {scalar_t__ tos; scalar_t__ src_len; scalar_t__ dst_len; } ;
struct fib_rule {int dummy; } ;
struct dn_fib_rule {int src; scalar_t__ src_len; int dst; scalar_t__ dst_len; } ;


 int ENOBUFS ;
 int FRA_DST ;
 int FRA_SRC ;
 scalar_t__ nla_put_le16 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int dn_fib_rule_fill(struct fib_rule *rule, struct sk_buff *skb,
       struct fib_rule_hdr *frh)
{
 struct dn_fib_rule *r = (struct dn_fib_rule *)rule;

 frh->dst_len = r->dst_len;
 frh->src_len = r->src_len;
 frh->tos = 0;

 if ((r->dst_len &&
      nla_put_le16(skb, FRA_DST, r->dst)) ||
     (r->src_len &&
      nla_put_le16(skb, FRA_SRC, r->src)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -ENOBUFS;
}
