
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_rule {int dummy; } ;


 size_t nla_total_size (int) ;

__attribute__((used)) static size_t fib6_rule_nlmsg_payload(struct fib_rule *rule)
{
 return nla_total_size(16)
        + nla_total_size(16);
}
