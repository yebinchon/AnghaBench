
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_rules_ops {scalar_t__ (* nlmsg_payload ) (struct fib_rule*) ;} ;
struct fib_rule_port_range {int dummy; } ;
struct fib_rule_hdr {int dummy; } ;
struct fib_rule {int dummy; } ;
struct fib_kuid_range {int dummy; } ;


 int IFNAMSIZ ;
 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (int) ;
 size_t nla_total_size_64bit (int) ;
 scalar_t__ stub1 (struct fib_rule*) ;

__attribute__((used)) static inline size_t fib_rule_nlmsg_size(struct fib_rules_ops *ops,
      struct fib_rule *rule)
{
 size_t payload = NLMSG_ALIGN(sizeof(struct fib_rule_hdr))
    + nla_total_size(IFNAMSIZ)
    + nla_total_size(IFNAMSIZ)
    + nla_total_size(4)
    + nla_total_size(4)
    + nla_total_size(4)
    + nla_total_size(4)
    + nla_total_size(4)
    + nla_total_size(4)
    + nla_total_size_64bit(8)
    + nla_total_size(sizeof(struct fib_kuid_range))
    + nla_total_size(1)
    + nla_total_size(1)
    + nla_total_size(sizeof(struct fib_rule_port_range))
    + nla_total_size(sizeof(struct fib_rule_port_range));

 if (ops->nlmsg_payload)
  payload += ops->nlmsg_payload(rule);

 return payload;
}
