
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct fib_rule_port_range {int dummy; } ;


 int nla_put (struct sk_buff*,int,int,struct fib_rule_port_range*) ;

__attribute__((used)) static int nla_put_port_range(struct sk_buff *skb, int attrtype,
         struct fib_rule_port_range *range)
{
 return nla_put(skb, attrtype, sizeof(*range), range);
}
