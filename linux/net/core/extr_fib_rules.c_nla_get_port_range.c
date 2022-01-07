
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct fib_rule_port_range {int end; int start; } ;


 int EINVAL ;
 int fib_rule_port_range_valid (struct fib_rule_port_range const*) ;
 struct fib_rule_port_range* nla_data (struct nlattr*) ;

__attribute__((used)) static int nla_get_port_range(struct nlattr *pattr,
         struct fib_rule_port_range *port_range)
{
 const struct fib_rule_port_range *pr = nla_data(pattr);

 if (!fib_rule_port_range_valid(pr))
  return -EINVAL;

 port_range->start = pr->start;
 port_range->end = pr->end;

 return 0;
}
